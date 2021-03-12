
import Foundation

public struct Artist: Codable {
    let id: String
    let first_name: String
    let last_name: String
    let alias: String
    let bio: String
    let email: String
    let phone_number: String
    let studio: Studio?
    let social_media: [SocialMedia]?
}
