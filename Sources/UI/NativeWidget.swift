import ScadeKit

#if os(Android)
import AndroidView
import Java
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
  var view: ViewGroup? {
    guard let rawPtr: UnsafeRawPointer = self.ptr else { return nil }
    let rawMutPtr = UnsafeMutableRawPointer(mutating: rawPtr)

    return ViewGroup.fromJavaObject(rawMutPtr)
  }
#endif

}
