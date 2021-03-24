import Foundation
import ScadeKit

public extension URL {

  init(forResource res: String) {
    let path = SCDRuntime.system.pathForResource(res)
    self.init(fileURLWithPath: path)
  }
  
}