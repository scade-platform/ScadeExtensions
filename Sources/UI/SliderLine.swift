import ScadeKit

public extension SCDWidgetsSliderLine {

  func onSlide(_ handler: @escaping (SCDWidgetsSliderLineEvent) -> Void) {
    let eventHandler = SCDWidgetsSliderLineEventHandler { handler($0!) }   
    onSlide.append(eventHandler)
  }

  var backgroundLine: SCDSvgRect? {
    return svgWithTemplate(id: "node-line") as? SCDSvgRect
  }

  var foregroundLine: SCDSvgRect? {
    return svgWithTemplate(id: "node-fill") as? SCDSvgRect
  }

  var bullet: SCDSvgBox? {
    return svgWithTemplate(id: "node-bullet") as? SCDSvgBox
  }
}
