
import Foundation

public enum UserRole: String, Codable, CaseIterable {
    case admin
    case galleryAdmin
    case customer
    case undefined
}

public struct User: Codable {
    public let id: UUID?
    public let first_name: String
    public let last_name: String
    public let email: String
    public let username: String
    public let role: UserRole
}
