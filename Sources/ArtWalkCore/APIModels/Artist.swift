
import Foundation

public struct Artist: Codable {
    public let id: UUID?
    public let first_name: String
    public let last_name: String
    public let alias: String
    public let bio: String
    public let email: String
    public let phone_number: String
    public let studio: Studio?
    public let social_media: [SocialMedia]?
}
