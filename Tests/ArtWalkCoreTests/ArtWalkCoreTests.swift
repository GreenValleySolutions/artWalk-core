import XCTest
@testable import ArtWalkCore

final class ArtWalkCoreTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(ArtWalkCore().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
