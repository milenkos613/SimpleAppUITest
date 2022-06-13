//
//  EnigmaTests.swift
//  EnigmaTests
//
//

import XCTest
@testable import Enigma

class EnigmaTests: XCTestCase {

    var sut: Enigma!
    var numberTest: NumConverter!
//    var crypto = [String: String]()
    
    override func setUp() {
        sut = Enigma()
        numberTest = NumConverter()
    }

    override func tearDown() {
        sut = nil
        numberTest = nil
    }
    
    func test_digitFuntion() {
        print(numberTest.getDigitsFromNumber(35879))
        XCTAssertEqual(numberTest.getDigitsFromNumber(35879), [9,5,7,8,5,3], "Error Conerting")
    }

    func test_getDay_notUnknown() {
        XCTAssertNotEqual(sut.getCurrentDay(), .Unknown, "Day identified incorrectly")
    }
    
    func test_loadEncryptionKeysForDay_monday() {
        sut.loadEncryptionKeys(for: .Monday)
        
        XCTAssertEqual(sut.crypto.count, 37, "Keys not loaded correctly")
        XCTAssertEqual(sut.crypto["a"], "de4", "Keys not loaded correctly")
    }
    
    func test_encryptMessage_devskiller() {
        sut.loadEncryptionKeys(for: .Monday)
        let encrypted = sut.encrypt(message: "Devskiller")
        XCTAssertEqual(encrypted, "uiopaswsxtr5mn2cvbbvcbvcpasuy4", "Encryption not working")
    }
    
    func test_decryptMessage_devskiller() {
        sut.loadEncryptionKeys(for: .Monday)
        let decrypted = sut.decrypt(message: "uiOpaswsxTr5mn2cvbbvcbvcpasuy4")
        XCTAssertEqual(decrypted, "devskiller", "Decryption not working")
    }


}
