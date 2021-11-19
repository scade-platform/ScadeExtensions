import ScadeKit

public extension SCDWidgetsWidget {
  func svgWithTemplate(id: String) -> SCDSvgElement? {
    return drawing?.findByAttribute("template-id", value: id)
  }
}
