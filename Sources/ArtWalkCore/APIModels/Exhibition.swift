
import Foundation

public struct Exhibition: Codable {
    public let id: UUID?
    public let name: String
    public let description: String
    public let galleryID: UUID
    public let open_date: Date
    public let close_date: Date
    
    public init(
        id: UUID? = nil,
        name: String,
        description: String,
        galleryID: UUID,
        open_date: Date,
        close_date: Date
    ) {
        self.id = id
        self.name = name
        self.description = description
        self.galleryID = galleryID
        self.open_date = open_date
        self.close_date = close_date
    }
}
