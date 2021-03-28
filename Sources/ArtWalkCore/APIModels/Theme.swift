
import Foundation

public struct Theme: Codable {
    
    private var hex: String
    
    public init(withHexColor hex: String) {
        self.hex = hex
    }
}
