import ScadeKit

public extension SCDApplication {

#if os(iOS)
  /// Native window of the application.
  static var uiWindow: UIWindow? {
    if #available(iOS 13, *) {
      if let scene = UIApplication.shared.connectedScenes.first(where: { $0 is UIWindowScene }) as? UIWindowScene {
        return scene.windows.first
      }

    } else {
      return UIApplication.shared.delegate?.window ?? nil
    }
    return nil
  }
#endif
}
