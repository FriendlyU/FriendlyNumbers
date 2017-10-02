//
//  FriendlyNumbers.swift
//  FriendlyNumbers
//
//
//  Created by Henry Saniuk on 6/7/17.
//  Copyright (c) 2017 FriendlyU, LLC. All rights reserved.
//

import Foundation

// MARK: Int extensions

extension Int {
    
    public var FNMostSimple: String {
        return "\(self.simpleFriendlyDigits)\(self.valueLetter ?? "")"
    }
    
    public var simpleFriendlyDigits: Int {
        if self < 1000000 {
            if self / 1000 == 0 {
                return self % 1000
            } else {
                return self / 1000
            }
        } else {
            if self / 1000000 == 0 {
                return self % 1000000
            } else {
                return self / 1000000
            }
        }
    }
    
    public var FNSimple: String {
        let number: String
        if self > 10000000 && self % 1000 == 0 {
            number = String(self.friendlyDigits)
            return "\(number)\(self.valueLetter ?? "")"
        } else if self < 1000 || self % 1000 == 0 {
            number = String(Int(self.friendlyDigits))
            return "\(number)"
        } else {
            number = String(self.friendlyDigits)
            return "\(number)\(self.valueLetter ?? "")"
        }
    }
    
    public var friendlyDigits: Double {
        let divisor: Double
        if self < 1000 {
            divisor = 1.0
            return (Double(self) / divisor).roundTo(places: 1)
        } else if self < 100000 {
            divisor = 1000.0
            return (Double(self) / divisor).roundTo(places: 1)
        } else if self < 1000000 {
            divisor = 1000.0
            return (Double(self) / divisor).roundTo(places: 1)
        } else if self < 10000000 {
            divisor = 1000000.0
            return (Double(self) / divisor).roundTo(places: 1)
        } else {
            divisor = 1000000.0
            return (Double(self) / divisor).roundTo(places: 1)
        }
    }
    
    public var valueLetter: String? {
        switch(self / 1000) {
        case 1..<1000: return "K"
        case 1000..<1000000: return "M"
        default: return "M"
        }
    }
}

// MARK: Double extensions

extension Double {
    func roundTo(places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
