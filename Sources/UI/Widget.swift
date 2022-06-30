import ScadeKit

public extension SCDWidgetsWidget {

  /// Find the child element of svg part of widget with `template-id` attribute equals to `id`.
  ///
  /// For example, to find background element of widget, use:
  ///   (widget.findSvgElementBy(template: "background") as? SCDSvgRect)?.fill = .red
  ///
  /// - Parameters:
  ///   - id: The value of `template-id` attribute of child element.
  /// - Returns: A drawable child element.
  func findSvgElementBy(template id: String) -> SCDSvgElement? {
    guard let container = self.drawing as? SCDSvgContainerElement else { return nil }

    return container.children.first(where: { $0.attributes["template-id"] == id })
  }

  /// Find the child element of svg part of widget with `template-id` attribute equals to `id`
  /// and type `type`.
  ///
  /// For example, to find background element of widget, use:
  ///   widget.findSvgElementBy(template: "background", as: SCDSvgRect.self)?.fill = .red
  ///
  /// - Parameters:
  ///   - id: The value of `template-id` attribute of child element.
  ///   - type: The type of child element.
  /// - Returns: A drawable child element.
  func findSvgElementBy<Result: SCDSvgElement>(template id: String, as type: Result.Type) -> Result? {
    return findSvgElementBy(template: id) as? Result
  }

  /// Background svg image of current widget.
  var backgroundSvgImage: SCDSvgImage? { self.backgroundSvgElement as? SCDSvgImage }

  /// Background svg rect of current widget.
  var backgroundSvgRect: SCDSvgRect? { self.backgroundSvgElement as? SCDSvgRect }

  /// Background svg element of current widget.
  var backgroundSvgElement: SCDSvgElement? { self.findSvgElementBy(template: "background") }

  /// Content group of current widget.
  var svgContent: SCDSvgGroup? { self.drawing?.findByAttribute("template-id", value: "content") as? SCDSvgGroup }
}
