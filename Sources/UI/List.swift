import ScadeKit

public extension SCDWidgetsList {


  /// Create onItemSelected handler.
  ///
  /// ```
  /// list.onItemSelected = { event in
  ///   print("on item selected: \(event?.item)")
  /// }
  /// ```
  ///
  /// - Parameter handler: The closure with SCDWidgetsItemSelectedEvent parameter.  
  func onItemSelected(_ handler: @escaping (SCDWidgetsItemSelectedEvent) -> Void) {
    let eventHandler = SCDWidgetsItemSelectedEventHandler { handler($0!) }   
    self.onItemSelected.append(eventHandler)
  }

  /// Create element provider for list with items of type T.
  ///
  /// ```
  /// // Create provider for list with String items:
  /// list.elementProvider = SCDWidgetsElementProvider { (text: String, elem) in
  ///   (elem["label"] as? SCDWidgetsLabel)?.text = text
  /// }
  /// ```
  ///
  /// - Parameter closure: The closure with two paramateres of the current list element: item and widget.
  func elementProvider<T>(_ clousure: @escaping (T, SCDWidgetsContainer) -> Void) {
    self.elementProvider = SCDWidgetsElementProvider(clousure)
  }
}
