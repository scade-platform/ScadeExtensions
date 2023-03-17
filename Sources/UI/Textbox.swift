import ScadeKit

public extension SCDWidgetsTextbox {

  /// Create onTextChange handler.
  ///
  /// For example, to create handler which prints text, use:
  ///
  ///   textbox.onTextChange { event in
  ///     print("changed text from '\(event.oldValue)' to '\(event.newValue)'")
  ///   }
  ///
  /// - Parameters:
  ///   - handler: The closure with SCDWidgetsTextChangeEvent parameter. 
  func onTextChange(_ handler: @escaping (SCDWidgetsTextChangeEvent) -> Void) {
    let eventHandler = SCDWidgetsTextChangeEventHandler { handler($0!) }   
    self.onTextChange.append(eventHandler)
  }
}
