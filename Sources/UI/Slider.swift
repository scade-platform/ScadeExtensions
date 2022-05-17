import ScadeKit

public extension SCDWidgetsSlider {

  /// Create element provider for slider with items of type T.
  ///
  /// ```
  /// // Create provider for slider with String items:
  /// slider.elementProvider = SCDWidgetsElementProvider { (text: String, elem) in
  ///   (elem["label"] as? SCDWidgetsLabel)?.text = text
  /// }
  /// ```
  ///
  /// - Parameter closure: The closure with two paramateres of the current slider element: item and widget.
  func elementProvider<T>(_ clousure: @escaping (T, SCDWidgetsContainer) -> Void) {
    self.elementProvider = SCDWidgetsElementProvider(clousure)
  }
}
