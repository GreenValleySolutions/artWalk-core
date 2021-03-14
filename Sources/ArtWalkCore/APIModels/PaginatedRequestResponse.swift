
import Foundation

protocol PaginatedRequestResponse: Decodable {
    associatedtype Model: Codable
    var items: [Model] { get }
    var metadata: MetaData { get }
}

struct MetaData: Decodable {
    let numberOfItemsPerPage: Int
    let totalQueryableItems: Int
    let currentPage: Int
    
    init(numberOfItemsPerPage: Int, totalQueryableItems: Int, currentPage: Int) {
        self.numberOfItemsPerPage = numberOfItemsPerPage
        self.totalQueryableItems = totalQueryableItems
        self.currentPage = currentPage
    }
    
    enum CodingKeys: String, CodingKey {
        case numberOfItemsPerPage = "per"
        case totalQueryableItems = "total"
        case currentPage = "page"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        numberOfItemsPerPage = try container.decode(Int.self, forKey: .numberOfItemsPerPage)
        totalQueryableItems = try container.decode(Int.self, forKey: .totalQueryableItems)
        currentPage = try container.decode(Int.self, forKey: .currentPage)
    }
}

