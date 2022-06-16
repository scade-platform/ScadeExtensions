import ScadeKit

public extension SCDWidgetsDatePicker {

  /// Create onDatePick handler.
  ///
  /// For example, to create handler which prints selected date, use:
  ///
  ///   datePicker.onDatePicked { date in
  ///     print("on date picked: \(date)")
  ///   }
  ///
  /// - Parameters:
  ///   - handler: The closure with Date parameter. 
  func onDatePicked(_ handler: @escaping (Date) -> Void) {
    let eventHandler = SCDWidgetsDatePickerEventHandler { event in
      guard let datePicker = event?.target as? SCDWidgetsDatePicker else { return }
      handler(datePicker.date)
    }
    self.onDatePick.append(eventHandler)
  }
}
