import ScadeKit

public extension SCDWidgetsContainer {

  /// Get child widget by name.
  ///
  /// ```
  /// (container["label"] as? SCDWidgetsLabel)?.text = "hello"
  /// ```
  /// - Parameter name: The name of child.
  /// - Returns: A child widget with name `name`.
  subscript(name: String) -> SCDWidgetsWidget? {
    self.getWidgetByName(name)
  }
}
