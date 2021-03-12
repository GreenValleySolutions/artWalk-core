
import Foundation

public struct Exhibition: Codable {
    public let id: String
    public let name: String
    public let description: String
    public let gallery: String
    public let open_date: Date
    public let close_date: Date
}
