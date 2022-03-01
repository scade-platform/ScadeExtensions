import ScadeKit

#if os(Android)
import AndroidApp
#endif

public extension SCDWidgetsNativeWidget {

#if os(macOS)
  var nsView: NSView? {
    guard let ptr: UnsafeRawPointer = self.ptr else { return nil }
    return Unmanaged<AnyObject>.fromOpaque(ptr).takeUnretainedValue() as? NSView
  }
#elseif os(iOS)
  var uiView: UIView? {
    guard let ptr: UnsafeRawPointer = self.ptr else { return nil }
    return Unmanaged<AnyObject>.fromOpaque(ptr).takeUnretainedValue() as? UIView
  }
#elseif os(Android)
  var activity: Activity? {
    return nil
  }
#endif

}
