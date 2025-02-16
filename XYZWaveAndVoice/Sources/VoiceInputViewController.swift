 
import UIKit
import AVFoundation
import Speech

class VoiceInputViewController: UIViewController, SFSpeechRecognizerDelegate {
    
    // Audio Recording and Speech Recognition
    var audioEngine: AVAudioEngine!  // Initialize audio engine
    var audioRecorder: AVAudioRecorder!
    var speechRecognizer: SFSpeechRecognizer!
    var recognitionRequest: SFSpeechAudioBufferRecognitionRequest!
    var recognitionTask: SFSpeechRecognitionTask?
    
    @IBOutlet weak var waveformView: XYZWaveformView!  // Display waveform
    @IBOutlet weak var transcribedTextView: UITextView!  // Display transcribed text
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize speech recognizer
        speechRecognizer = SFSpeechRecognizer(locale: Locale(identifier: "zh_CN"))  // Set language to Chinese
        
        speechRecognizer?.delegate = self
        
        // Request authorization for speech recognition
        SFSpeechRecognizer.requestAuthorization { authStatus in
            OperationQueue.main.addOperation {
                switch authStatus {
                case .authorized:
                    self.startRecording()
                default:
                    self.transcribedTextView.text = "Speech recognition authorization denied."
                }
            }
        }
    }

    // Start the audio engine and speech recognition
    func startRecording() {
        // Initialize audioEngine
        audioEngine = AVAudioEngine()

        // Set audio session category to record
        try! AVAudioSession.sharedInstance().setCategory(.record, mode: .default, options: .duckOthers)
        try! AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)

        // Create and configure audio buffer request for speech recognition
        recognitionRequest = SFSpeechAudioBufferRecognitionRequest()
        recognitionRequest.shouldReportPartialResults = true
        
        // Get the input node from audio engine
        let inputNode = audioEngine.inputNode
        let recordingFormat = inputNode.outputFormat(forBus: 0)
        
        // Set up recognition task
        recognitionTask = speechRecognizer?.recognitionTask(with: recognitionRequest, resultHandler: { (result, error) in
            if let result = result {
                // Update the transcribed text in real-time
                self.transcribedTextView.text = result.bestTranscription.formattedString
            }
            
            if let error = error {
                print("Speech recognition failed: \(error.localizedDescription)")
            }
        })
        
        // Install a tap on the input node to capture microphone audio and send it to the recognition request
        inputNode.installTap(onBus: 0, bufferSize: 1024, format: recordingFormat) { (buffer, time) in
            self.recognitionRequest.append(buffer)
        }
        
        // Prepare and start the audio engine
        audioEngine.prepare()
        try! audioEngine.start()
        
        self.transcribedTextView.text = "Listening..."
    }

    // Stop recording and recognition
    func stopRecording() {
        // Stop the audio engine and recognition request
        audioEngine.stop()
        recognitionRequest.endAudio()
        self.transcribedTextView.text = "Stopped listening."
    }
    
    // Audio recorder did finish recording
    func audioRecorderDidFinishRecordingToUrl(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        if flag {
            stopRecording()
        }
    }

    // Speech recognizer availability change callback
    func speechRecognizer(_ speechRecognizer: SFSpeechRecognizer, availabilityDidChange available: Bool) {
        if available {
            // Available for speech recognition, start recording
            startRecording()
        } else {
            // Unavailable, show an error message
            self.transcribedTextView.text = "Speech recognition is not available."
        }
    }
    
    // Update meters for waveform visualization
    @objc func updateMeters() {
        // Update audio recording levels
        audioRecorder.updateMeters()

        // Normalize volume and update waveform view
        let normalizedValue = pow(10, audioRecorder.averagePower(forChannel: 0) / 20)
        waveformView.updateWithLevel(CGFloat(normalizedValue))
    }

    // Set up audio recorder for microphone input
    func setupAudioRecorder(filePath: URL) -> AVAudioRecorder {
        let recorderSettings: [String: AnyObject] = [
            AVSampleRateKey: 44100.0 as AnyObject,
            AVFormatIDKey: NSNumber(value: kAudioFormatMPEG4AAC),
            AVNumberOfChannelsKey: 2 as AnyObject,
            AVEncoderAudioQualityKey: AVAudioQuality.min.rawValue as AnyObject
        ]

        // Configure AVAudioSession for playback and recording
        try! AVAudioSession.sharedInstance().setCategory(.playAndRecord, mode: .default)

        // Create AVAudioRecorder instance
        let recorder = try! AVAudioRecorder(url: filePath, settings: recorderSettings)
        recorder.isMeteringEnabled = true  // Enable audio power metering
        recorder.prepareToRecord()

        return recorder
    }

    // View controller lifecycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // Set up audio recorder and start recording
        audioRecorder = setupAudioRecorder(filePath: URL(fileURLWithPath: "/dev/null"))
        audioRecorder.record()

        // Set up CADisplayLink to update waveform in real-time
        let displayLink = CADisplayLink(target: self, selector: #selector(updateMeters))
        displayLink.add(to: RunLoop.current, forMode: .common)
    }

    // Start and stop recording actions
    @IBAction func startButtonTapped(_ sender: UIButton) {
        startRecording()
    }
    
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        stopRecording()
    }
}
