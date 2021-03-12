
import Foundation

struct ArtPiece: Codable {
    let id: String
    let title: String
    let description: String
    let artistID: ArtistAPIModel.IDValue
    let available_for_sale: Bool
    let price: Double
    let images: [[String: String]]?
    let thumbnail: String
    let ar_models: [ArtPieceARModel]?
}
