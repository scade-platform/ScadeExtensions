import ScadeKit

public extension SCDWidgetsContainer {

  subscript(name: String) -> SCDWidgetsWidget? {
    self.getWidgetByName(name)
  }
}
