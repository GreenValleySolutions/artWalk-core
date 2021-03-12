
import Foundation

enum UserRole: String, Codable, CaseIterable {
    case admin
    case galleryAdmin
    case customer
    case undefined
}

struct User: Codable {
    let id: String
    let first_name: String
    let last_name: String
    let email: String
    let username: String
    let role: UserRole
}
