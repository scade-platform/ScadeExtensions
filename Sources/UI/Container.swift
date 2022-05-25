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

  /// Get child widget by name and type.
  ///
  ///    container["label", as: SCDWidgetsLabel.self]?.text = "hello"
  ///
  /// - Parameters:
  ///   - name: The name of child widget.
  ///   - type: The type of child widget.
  /// - Returns: A child widget with name `name` and type `type`.
  subscript<Result: SCDWidgetsWidget>(name: String, as type: Result.Type) -> Result? {
    self.getWidgetByName(name) as? Result
  }
}
