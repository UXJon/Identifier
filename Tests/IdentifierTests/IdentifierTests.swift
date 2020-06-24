import XCTest
@testable import Identifier

final class IdentifierTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        let id = Identifier<Int>("Test")
        XCTAssertEqual(id, "Test")
        XCTAssertEqual(id.value, "Test")
        XCTAssertNotEqual(id, "Another Id")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
