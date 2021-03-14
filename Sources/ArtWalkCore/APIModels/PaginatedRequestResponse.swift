
import Foundation

public protocol PaginatedRequestResponse: Decodable {
    associatedtype Model: Codable
    var items: [Model] { get }
    var metadata: MetaData { get }
}

public struct MetaData: Decodable {
    public let numberOfItemsPerPage: Int
    public let totalQueryableItems: Int
    public let currentPage: Int
    
    public init(numberOfItemsPerPage: Int, totalQueryableItems: Int, currentPage: Int) {
        self.numberOfItemsPerPage = numberOfItemsPerPage
        self.totalQueryableItems = totalQueryableItems
        self.currentPage = currentPage
    }
    
    enum CodingKeys: String, CodingKey {
        case numberOfItemsPerPage = "per"
        case totalQueryableItems = "total"
        case currentPage = "page"
    }
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        numberOfItemsPerPage = try container.decode(Int.self, forKey: .numberOfItemsPerPage)
        totalQueryableItems = try container.decode(Int.self, forKey: .totalQueryableItems)
        currentPage = try container.decode(Int.self, forKey: .currentPage)
    }
}

