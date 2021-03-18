
import Foundation

public struct Gallery: Codable {
    public let id: UUID?
    public let name: String
    public let about: String
    public let address: Location
    public let phone: String?
    public let website: String?
    public let hours: [Hour]?
    public let theme: Theme
    public let social_media: [SocialMedia]?
    public let store_info: StoreInfo?
    public let has_past_exhibitions: Bool
    public let has_active_exhibition: Bool
    
    public init(
        id: UUID? = nil,
        name: String,
        about: String,
        address: Location,
        phone: String? = nil,
        website: String? = nil,
        hours: [Hour]? = nil,
        theme: Theme,
        social_media: [SocialMedia]? = nil,
        store_info: StoreInfo? = nil,
        has_past_exhibitions: Bool = false,
        has_active_exhibition: Bool = false
    ) {
        self.id = id
        self.name = name
        self.about = about
        self.address = address
        self.phone = phone
        self.website = website
        self.hours = hours
        self.theme = theme
        self.social_media = social_media
        self.store_info = store_info
        self.has_past_exhibitions = has_past_exhibitions
        self.has_active_exhibition = has_active_exhibition
    }
}
