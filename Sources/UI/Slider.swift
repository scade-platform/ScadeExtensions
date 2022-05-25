import ScadeKit

public extension SCDWidgetsSlider {

  /// Create element provider for slider with items of type T.
  ///
  /// For example, to create provider with String item and
  /// element which contains SCDWidgetsLabel with name "label", use:
  ///
  ///   slider.elementProvider = SCDWidgetsElementProvider { (text: String, element) in
  ///     element["label", as: SCDWidgetsLabel.self]?.text = text
  ///   }
  ///
  /// - Parameters:
  ///   - closure: The closure with two paramateres of the current slider element: item and widget.
  func elementProvider<T>(_ clousure: @escaping (T, SCDWidgetsContainer) -> Void) {
    self.elementProvider = SCDWidgetsElementProvider(clousure)
  }
}
