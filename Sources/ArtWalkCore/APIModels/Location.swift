
import Foundation

public struct Location: Codable {
    public let address1: String
    public let address2: String?
    public let city: String
    public let state: String
    public let zipcode: String
    
    enum CodingKeys: String, CodingKey {
        case address1 = "address_1"
        case address2 = "address_2"
        case city, state, zipcode
    }
}
