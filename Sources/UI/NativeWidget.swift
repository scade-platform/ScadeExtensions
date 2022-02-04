import ScadeKit

public extension SCDWidgetsNativeWidget {

#if os(macOS)
  var view: NSView? {
    guard let ptr = self.ptr else { return nil }
    return Unmanaged<AnyObject>.fromOpaque(ptr).takeUnretainedValue() as? NSView
  }
#elseif os(iOS)
  var view: UIView? {
    guard let ptr = self.ptr else { return nil }
    return Unmanaged<AnyObject>.fromOpaque(ptr).takeUnretainedValue() as? UIView
  }
#endif

}
