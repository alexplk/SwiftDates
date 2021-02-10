import XCTest
@testable import SwiftDates

final class SwiftDatesTests: XCTestCase {
    var jan1 = DateComponents(calendar: .autoupdatingCurrent, year: 2020, month: 1, day: 1).date!
    var jan2 = DateComponents(calendar: .autoupdatingCurrent, year: 2020, month: 1, day: 2).date!
    
    var jan8 = Date.isoDateFormatter.date(from: "2020-01-08")!
    
    func testAddDays() {
        XCTAssertEqual(jan1 + 1.days, jan2)
        XCTAssertEqual(jan1 + 1.weeks, jan8)
    }
    
    func testFormats() {
        XCTAssertEqual(jan1.isoDateString, "2020-01-01")
    }
}
