//
//  HopscotchTests.swift
//  HopscotchTests
//
//  Created by Abdul Rahim on 07/06/21.
//

import XCTest
@testable import Hopscotch

class HopscotchTests: XCTestCase {
    
    
    private var fifteen: FifteenBoard!
    
    override func setUp() {
        super.setUp()
        fifteen = FifteenBoard()
    }
    
    //MARK:- Testing state array in FifteenBoard
    func testPuzzleCount() {
        // Given: Here we assert that our initial state is correct
        XCTAssertEqual(fifteen.state.count, 4)
        XCTAssertEqual(fifteen.rows, 4)
        XCTAssertEqual(fifteen.cols, 4)
    }
    
    //MARK:- Testing Fetch the tile at the given position.
    func testGetTitle() {
        XCTAssertEqual(fifteen.getTile(atRow: 1, atColumn: 1), 6)
        XCTAssertEqual(fifteen.getTile(atRow: 1, atColumn: 2), 7)
        XCTAssertEqual(fifteen.getTile(atRow: 1, atColumn: 3), 8)
        XCTAssertEqual(fifteen.getTile(atRow: 2, atColumn: 1), 10)
        XCTAssertEqual(fifteen.getTile(atRow: 2, atColumn: 2), 11)
        XCTAssertEqual(fifteen.getTile(atRow: 2, atColumn: 3), 12)
    }
    
//    func testGetRowAndColumn() {
//        let tuple = (row: 0,column: 0)
//        XCTAssertEqual(fifteen.getRowAndColumn(forTile: 0),tuple)
//    }
    
    
    //MARK:- Testing the CanSlideup.
    func testCanSlideUp() {
        XCTAssertEqual(fifteen.canSlideTile(atRow: 2, Column: 3), true)
    }
    
    //MARK:- Testing the CanSlidedown.
    func testCanSlideDown() {
        XCTAssertEqual(fifteen.canSlideTileDown(atRow: 2, Column: 3), true)
    }
    
    
    //MARK:- Testing the CanSlidedown.
    func testCanSlideLeft() {
        XCTAssertEqual(fifteen.canSlideTileLeft(atRow: 3, Column: 4), true)
    }
    
    func testCanSlideRight() {
        XCTAssertEqual(fifteen.canSlideTileRight(atRow: 3, Column: 2), true)
    }
    
    func testCanSlideTile() {
        XCTAssertEqual(fifteen.canSlideTile(atRow: 3, Column: 2), true)
    }
    
    func testIsSolved() {
        XCTAssertEqual(fifteen.isSolved(), true)
    }
    

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
