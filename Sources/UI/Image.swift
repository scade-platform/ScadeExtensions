import ScadeKit

public extension SCDWidgetsImage {

  /// SVG image of the widget.
  var svgImage: SCDSvgImage? {
    self.drawing?.findByAttribute("template-id", value: "node-image") as? SCDSvgImage
  }

  /// Border radius of the SVG image of the widget.
  var borderRadius:Int {
    get {
      return self.svgImage?.borderRadius ?? 0
    }
    set(newValue) {
      self.svgImage?.borderRadius = newValue
    }
  }

}
