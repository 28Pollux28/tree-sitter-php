import XCTest
import SwiftTreeSitter
import TreeSitterPhp

final class TreeSitterPhpTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_php())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Php grammar")
    }
}
