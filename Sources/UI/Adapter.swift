import ScadeKit

public extension SCDLatticePageAdapter {

  static var safeAreaInsets: SCDGraphicsEdgeInsets {
    let insets = SCDGraphicsEdgeInsets()

#if os(iOS)
    let window = UIApplication.shared.windows.first
    insets.top = window?.safeAreaInsets.top ?? 0
    insets.bottom = window?.safeAreaInsets.bottom ?? 0
#elseif os(Android)
    //TODO
#endif

    return insets
  }
}
