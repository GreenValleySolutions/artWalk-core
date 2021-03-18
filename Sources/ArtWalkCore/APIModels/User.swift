
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
    public let password: String?
    public let role: UserRole
    
    public init(
        id: UUID? = nil,
        first_name: String,
        last_name: String,
        email: String,
        username: String,
        password: String? = nil,
        role: UserRole
    ) {
        self.id = id
        self.first_name = first_name
        self.last_name = last_name
        self.email = email
        self.username = username
        self.password = password
        self.role = role
    }
}
