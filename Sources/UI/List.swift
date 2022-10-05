import ScadeKit

public extension SCDWidgetsList {

  /// Create onItemSelected handler.
  ///
  /// For example, to create handler which prints selected item, use:
  ///
  ///   list.onItemSelected { event in
  ///     print("on item selected: \(event?.item)")
  ///   }
  ///
  /// - Parameters:
  ///   - handler: The closure with SCDWidgetsItemSelectedEvent parameter. 
  func onItemSelected(_ handler: @escaping (SCDWidgetsItemSelectedEvent) -> Void) {
    let eventHandler = SCDWidgetsItemSelectedEventHandler { handler($0!) }   
    self.onItemSelected.append(eventHandler)
  }

  /// Create element provider for list with items of type T.
  ///
  /// For example, to create provider with String item and
  /// element which containns SCDWidgetsLabel with name "label", use:
  ///
  ///   list.elementProvider { (text: String, element) in
  ///     element["label", as: SCDWidgetsLabel.self]?.text = text
  ///   }
  ///
  /// - Parameters:
  ///   - closure: The closure with two paramateres of the current list element: item and widget.
  func elementProvider<T>(_ clousure: @escaping (T, SCDWidgetsContainer) -> Void) {
    self.elementProvider = SCDWidgetsElementProvider(clousure)
  }
}
