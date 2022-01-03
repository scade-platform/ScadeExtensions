import ScadeKit

public extension SCDWidgetsWidget {
  func svgWithTemplate(id: String) -> SCDSvgElement? {
    return drawing?.findByAttribute("template-id", value: id)
  }

  var backgroundImage: SCDSvgImage? {
    return self.backgroundElement as? SCDSvgImage
  }

  var backgroundRect: SCDSvgRect? {
    return self.backgroundElement as? SCDSvgRect
  }

  var backgroundElement: SCDSvgElement? {
    if let background = svgWithTemplate(id: "background") as? SCDSvgContainerElement,
       !background.children.isEmpty {
      return background.children[0]
    }
    return nil
  }
}
