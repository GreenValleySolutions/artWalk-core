
import Foundation

struct ArtPiece: Codable {
    let id: String
    let title: String
    let description: String
    let artistID: UUID
    let available_for_sale: Bool
    let price: Double
    let images: [[String: String]]?
    let thumbnail: String
    let ar_models: [ArtPieceARModel]?
}

struct ArtPieceARModel: Codable {
    let id: String
    let name: String
    let description: String
    let url: String
    let scene_planes: ARModelPlaneDetectionOptions
}

struct ARModelPlaneDetectionOptions: OptionSet, Codable {
    var rawValue: Int
    
    static let horizontal = ARModelPlaneDetectionOptions(rawValue: 1 << 0)
    static let vertical = ARModelPlaneDetectionOptions(rawValue: 1 << 1)
    
    static let all: ARModelPlaneDetectionOptions = [.horizontal, .vertical]
}
