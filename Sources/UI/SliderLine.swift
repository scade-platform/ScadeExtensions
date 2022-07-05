import ScadeKit

public extension SCDWidgetsSliderLine {

  /// Create onSlide handler.
  ///
  /// For example, to create handler which prints new value of slider line, use:
  /// 
  ///   sliderLine.onSlide { event in
  ///     print("new value of slider: \(event?.newValue)")
  ///   }
  ///
  /// - Parameters:
  ///   - handler: The closure with  SCDWidgetsSliderLineEvent parameter.
  func onSlide(_ handler: @escaping (SCDWidgetsSliderLineEvent) -> Void) {
    let eventHandler = SCDWidgetsSliderLineEventHandler { handler($0!) }   
    onSlide.append(eventHandler)
  }

  /// SVG element of the background line
  var backgroundLine: SCDSvgRect? { svgContent?.findByAttribute("template-id", value: "node-line") as? SCDSvgRect }

  /// SVG element of the foreground line
  var foregroundLine: SCDSvgRect? { svgContent?.findByAttribute("template-id", value: "node-fill") as? SCDSvgRect }

  /// SVG element of the bullet
  var bullet: SCDSvgBox? { svgContent?.findByAttribute("template-id", value: "node-bullet") as? SCDSvgBox }
}
