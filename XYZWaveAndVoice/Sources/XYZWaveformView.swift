

import UIKit

@IBDesignable
public class XYZWaveformView: UIView {
    fileprivate var _phase: CGFloat = 0.0
    fileprivate var _amplitude: CGFloat = 0 // 振幅
    fileprivate var _amplitudeMultiply: CGFloat = 5 //增大

    @IBInspectable public var waveColor: UIColor = .black
    @IBInspectable public var numberOfWaves = 5
    @IBInspectable public var primaryWaveLineWidth: CGFloat = 3.0
    @IBInspectable public var secondaryWaveLineWidth: CGFloat = 1.0
    @IBInspectable public var idleAmplitude: CGFloat = 0.01
    @IBInspectable public var frequency: CGFloat = 1.25
    @IBInspectable public var density: CGFloat = 5
    @IBInspectable public var phaseShift: CGFloat = -0.15

    @IBInspectable public var amplitude: CGFloat {
        get {
            return _amplitude
        }
    }

    public func updateWithLevel(_ level: CGFloat) {
        _phase += phaseShift
        _amplitude = fmax(level, idleAmplitude) * _amplitudeMultiply
        setNeedsDisplay()
    }

    override public func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()!
        context.clear(bounds)

        backgroundColor?.set()
        context.fill(rect)

        // Draw multiple sinus waves, with equal phases but altered
        // amplitudes, multiplied by a parable function.
        for waveNumber in 0...numberOfWaves {
            context.setLineWidth(waveNumber == 0 ? primaryWaveLineWidth : secondaryWaveLineWidth)

            // Set the dynamic gradient color for each wave
            let gradientColor = getDynamicGradientColor(forWave: waveNumber)
            gradientColor.set()

            let halfHeight = bounds.height / 2.0
            let width = bounds.width
            let mid = width / 2.0

            // 增大最大振幅，使波动更大
            let maxAmplitude = halfHeight - 2.0  // 改小一些，给振幅留更多空间

            let progress: CGFloat = 1.0 - CGFloat(waveNumber) / CGFloat(numberOfWaves)
            let normedAmplitude = (1.5 * progress - 0.5) * amplitude

            var x: CGFloat = 0.0
            while x < width + density {
                let scaling = -pow(1 / mid * (x - mid), 2) + 1
                let tempCasting: CGFloat = 2.0 * CGFloat.pi * (x / width) * frequency + _phase
                let y = scaling * maxAmplitude * normedAmplitude * CGFloat(sin(Float(tempCasting))) + halfHeight

                if x == 0 {
                    context.move(to: CGPoint(x: x, y: y))
                } else {
                    context.addLine(to: CGPoint(x: x, y: y))
                }

                x += density
            }

            context.strokePath()
        }
    }

    // Function to generate a dynamic gradient color based on wave progress
    func getDynamicGradientColor(forWave waveIndex: Int) -> UIColor {
        let progress = CGFloat(waveIndex) / CGFloat(numberOfWaves)
        
        // Change colors to red and yellow, avoid green and purple
        let red = min(1.0, progress * 1.5)   // Gradient from red to yellow
        let green: CGFloat = 0.0             // Green is not used, for pure red to yellow
        let blue: CGFloat = 0.0              // Blue is not used, for pure red to yellow
        
        // Dynamically adjust alpha for effect (transparency)
        let alpha: CGFloat = 1.0 - (progress * 0.5)  // Alpha decreases as wave index increases
        
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
}
