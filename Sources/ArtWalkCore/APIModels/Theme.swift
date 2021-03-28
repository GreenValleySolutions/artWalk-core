
import Foundation

public struct Theme: Codable {
    
    public private(set) var hex: String
    
    public init(withHexColor hex: String) {
        self.hex = hex
    }
}
