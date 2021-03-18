
import Foundation

public struct ArtPiece: Codable {
    public let id: UUID?
    public let title: String
    public let description: String
    public let artistID: UUID
    public let available_for_sale: Bool
    public let price: Double
    public let images: [[String: String]]?
    public let thumbnail: String
    public let ar_models: [ArtPieceARModel]?
    
    public init(
        id: UUID? = nil,
        title: String,
        description: String,
        artistID: UUID,
        available_for_sale: Bool,
        price: Double,
        images: [[String: String]]? = nil,
        thumbnail: String,
        ar_models: [ArtPieceARModel]? = nil
    ) {
        self.id = id
        self.title = title
        self.description = description
        self.artistID = artistID
        self.available_for_sale = available_for_sale
        self.price = price
        self.images = images
        self.thumbnail = thumbnail
        self.ar_models = ar_models
    }
}

public struct ArtPieceARModel: Codable {
    public let id: String
    public let name: String
    public let description: String
    public let url: String
    public let scene_planes: ARModelPlaneDetectionOptions
    
    public init(
        id: String,
        name: String,
        description: String,
        url: String,
        planes: ARModelPlaneDetectionOptions
    ) {
        self.id = id
        self.name = name
        self.description = description
        self.url = url
        self.scene_planes = planes
    }
}

public struct ARModelPlaneDetectionOptions: OptionSet, Codable {
    public let rawValue: Int
    
    public static let horizontal = ARModelPlaneDetectionOptions(rawValue: 1 << 0)
    public static let vertical = ARModelPlaneDetectionOptions(rawValue: 1 << 1)
    
    public static let all: ARModelPlaneDetectionOptions = [.horizontal, .vertical]
    
    public init(rawValue: Int) {
        self.rawValue = rawValue
    }
}
