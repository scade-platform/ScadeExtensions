import ScadeKit

public extension SCDSvgRGBColor {

  convenience init(widgetRGB color: SCDGraphicsRGB) {
    self.init(red: color.red, green: color.green, blue: color.blue, alpha: color.alpha)
  }
}

