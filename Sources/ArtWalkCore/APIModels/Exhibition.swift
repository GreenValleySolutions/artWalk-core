
import Foundation

public struct Exhibition: Codable {
    let id: String
    let name: String
    let description: String
    let gallery: String
    let open_date: Date
    let close_date: Date
}
