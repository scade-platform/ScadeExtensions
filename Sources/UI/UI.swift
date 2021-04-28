import ScadeKit

public extension SCDWidgetsWidget {
  func svgWithTemplate(id: String) -> SCDSvgElement? {
    return drawing?.findByAttribute("template-id", value: id)
  }
}

public extension SCDWidgetsSliderLine {

  var leftPart: SCDSvgRect? {
    return svgWithTemplate(id: "node-line") as? SCDSvgRect
  }

  var rightPart: SCDSvgRect? {
    return svgWithTemplate(id: "node-fill") as? SCDSvgRect
  }

  var bullet: SCDSvgBox? {
    return svgWithTemplate(id: "node-bullet") as? SCDSvgBox
  }

}


