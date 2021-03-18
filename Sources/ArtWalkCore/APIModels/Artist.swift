
import Foundation

public struct Artist: Codable {
    public let id: UUID?
    public let first_name: String
    public let last_name: String
    public let alias: String?
    public let bio: String?
    public let email: String?
    public let phone_number: String?
    public let studio: Studio?
    public let social_media: [SocialMedia]?
    
    public init(
        id: UUID? = nil,
        first_name: String,
        last_name: String,
        alias: String? = nil,
        bio: String? = nil,
        email: String? = nil,
        phone_number: String? = nil,
        studio: Studio? = nil,
        social_media: [SocialMedia]? = nil
    ) {
        self.id = id
        self.first_name = first_name
        self.last_name = last_name
        self.alias = alias
        self.bio = bio
        self.email = email
        self.phone_number = phone_number
        self.studio = studio
        self.social_media = social_media
    }
}
