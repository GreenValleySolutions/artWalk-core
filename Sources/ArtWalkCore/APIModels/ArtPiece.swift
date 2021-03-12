
import Foundation

public struct ArtPiece: Codable {
    public let id: String
    public let title: String
    public let description: String
    public let artistID: UUID
    public let available_for_sale: Bool
    public let price: Double
    public let images: [[String: String]]?
    public let thumbnail: String
    public let ar_models: [ArtPieceARModel]?
}

public struct ArtPieceARModel: Codable {
    public let id: String
    public let name: String
    public let description: String
    public let url: String
    public let scene_planes: ARModelPlaneDetectionOptions
}

public struct ARModelPlaneDetectionOptions: OptionSet, Codable {
    public public var rawValue: Int
    
    public static let horizontal = ARModelPlaneDetectionOptions(rawValue: 1 << 0)
    public static let vertical = ARModelPlaneDetectionOptions(rawValue: 1 << 1)
    
    public static let all: ARModelPlaneDetectionOptions = [.horizontal, .vertical]
    
    public init(rawValue: Int) {
        self.rawValue = rawValue
    }
}
