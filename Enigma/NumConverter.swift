//
//  NumConverter.swift
//  Enigma
//
//  Created by Yansong Wang on 2022/3/24.
//  Copyright © 2022 David V. All rights reserved.
//

import UIKit

class NumConverter: NSObject {
    func getDigitsFromNumber(_ r: UInt) -> [Int] {
        var results: [Int] = []
        
        let strInput = String(r)
        
        var index = strInput.count - 1
        
        while (index >= 0) {
            let string = String(Array(strInput)[index])
            
            results.append(Int(string)!)
            
            index -= 1
        }
        
        return results
    }
}
