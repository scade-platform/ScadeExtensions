import ScadeKit

public extension SCDWidgetsCollectionView {

  /// Create element provider for collection with items of type T.
  ///
  /// For example, to create provider with String item and
  /// element which containns SCDWidgetsLabel with name "label", use:
  ///
  ///   collection.elementProvider { (text: String, element) in
  ///     element["label", as: SCDWidgetsLabel.self]?.text = text
  ///   }
  ///
  /// - Parameters:
  ///   - closure: The closure with two paramateres of the current collection element: item and widget.
  func elementProvider<T>(_ clousure: @escaping (T, SCDWidgetsContainer) -> Void) {
    self.elementProvider = SCDWidgetsElementProvider(clousure)
  }


  /// Create onItemSelected handler.
  ///
  /// For example, to create handler which prints selected item, use:
  ///
  ///   collection.onItemSelected { event in
  ///     print("on item selected: \(event.item)")
  ///   }
  ///
  /// - Parameters:
  ///   - handler: The closure with SCDWidgetsItemEvent parameter. 
  func onItemSelected(_ handler: @escaping (SCDWidgetsItemEvent) -> Void) {
    let eventHandler = SCDWidgetsEventHandler { handler($0 as! SCDWidgetsItemEvent ) }   
    (self.template as? SCDWidgetsContainer)?.onClick.append(eventHandler)
  }
}
