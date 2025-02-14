import XCTest
import SwiftTreeSitter
import TreeSitterPhpOnly

final class TreeSitterPhpOnlyTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_php_only())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading PhpOnly grammar")
    }
}
