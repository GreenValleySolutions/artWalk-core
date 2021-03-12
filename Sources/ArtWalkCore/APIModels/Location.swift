
import Foundation

struct Location: Codable {
    let address1: String
    let address2, address3: String?
    let city: String
    let state: String
    let zipcode: String
    
    enum CodingKeys: String, CodingKey {
        case address1 = "address_1"
        case address2 = "address_2"
        case address3 = "address_3"
        case city, state, zipcode
    }
}
