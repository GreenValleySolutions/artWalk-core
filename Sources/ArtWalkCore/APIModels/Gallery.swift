
import Foundation

public struct Gallery: Codable {
    public let id: String
    public let name: String
    public let about: String
    public let address: Location
    public let phone: String?
    public let website: String?
    public let hours: [Hour]?
    public let theme: Theme
    public let social_media: [SocialMedia]?
    public let store_info: StoreInfo?
    public let exhibitions: [Exhibition]?
    public let has_past_exhibitions: Bool
    public let has_active_exhibition: Bool
}
