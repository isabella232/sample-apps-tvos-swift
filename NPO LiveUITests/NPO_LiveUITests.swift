//
//  NPO_LiveUITests.swift
//  NPO LiveUITests
//
//  Created by Akos Birmacher on 2018. 10. 19..
//  Copyright © 2018. Bart den Hollander. All rights reserved.
//

import XCTest

class NPO_LiveUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        XCUIRemote.shared.press(.down)
        XCUIRemote.shared.press(.right)
        XCUIRemote.shared.press(.right)
        XCUIRemote.shared.press(.down)
        
        XCUIRemote.shared.press(.select)
        sleep(3)
        
        XCTContext.runActivity(named: "screenshot", block: { activity in
            let mainScreenScreenshot = XCUIScreen.main.screenshot()
            let attachement  = XCTAttachment.init(screenshot: mainScreenScreenshot)
            attachement.lifetime = XCTAttachment.Lifetime.keepAlways
            activity.add(attachement)
        })
        
        XCUIRemote.shared.press(.menu)
        XCUIRemote.shared.press(.down)
        XCUIRemote.shared.press(.down)
        XCUIRemote.shared.press(.select)
        
        
        XCTContext.runActivity(named: "screenshot", block: { activity in
            let mainScreenScreenshot = XCUIScreen.main.screenshot()
            let attachement  = XCTAttachment.init(screenshot: mainScreenScreenshot)
            attachement.lifetime = XCTAttachment.Lifetime.keepAlways
            activity.add(attachement)
        })
        
    }

}
