import Foundation
import XCTest

func accum(_ chars: String) -> String {
    var final: String = ""
//    loop thru string
    for index in 0...chars.count-1 {
        let currLetter = Array(chars)[index]
        //    grab letter's position in array
        let letterPosInArray = index
        //    capitalize first letter
        final += currLetter.uppercased()
        if letterPosInArray > 0 {
            for _ in 0...letterPosInArray-1 {
                final += currLetter.lowercased()
            }
        }
        if index < Array(chars).count {
            final += "-"
        }
        
        // remove last dash
//        final = String(final.dropLast(1))
        
        //    write out letter x times according to its position in array
        //    add dash after done with letter
    }

    return String(final.dropLast())
}

class SolutionTest: XCTestCase {
    static var allTests = [
        ("Test Accum", testAccum),
        ("Test Accum", testAccum1),
        ("Test Accum", testAccum2)
    ]
    
    func testAccum() {
        XCTAssertEqual(accum("abcd"), "A-Bb-Ccc-Dddd")
    }
    
    func testAccum1() {
        XCTAssertEqual(accum("RqaEzty"), "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy")
    }
    
    func testAccum2() {
        XCTAssertEqual(accum("cwAt"), "C-Ww-Aaa-Tttt")
    }
}

SolutionTest.defaultTestSuite.run()
