
import Foundation

public struct Gallery: Codable {
    let id: String
    let name: String
    let about: String
    let address: Location
    let phone: String?
    let website: String?
    let hours: [Hour]?
    let theme: Theme
    let social_media: [SocialMedia]?
    let store_info: StoreInfo?
    let exhibitions: [Exhibition]?
    let has_past_exhibitions: Bool
    let has_active_exhibition: Bool
}
