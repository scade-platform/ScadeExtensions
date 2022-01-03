import ScadeKit

public extension SCDWidgetsList {

  func onItemSelected(_ handler: @escaping (SCDWidgetsItemSelectedEvent) -> Void) {
    let eventHandler = SCDWidgetsItemSelectedEventHandler { handler($0!) }   
    self.onItemSelected.append(eventHandler)
  }

  func elementProvider<T>(_ clousure: @escaping (T, SCDWidgetsContainer) -> Void) {
    self.elementProvider = SCDWidgetsElementProvider(clousure)
  }
}
