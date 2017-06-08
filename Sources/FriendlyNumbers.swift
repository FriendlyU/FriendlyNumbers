//
//  FriendlyNumbers.swift
//  FriendlyNumbers
//
//
//  Created by Henry Saniuk on 6/7/17.
//  Copyright (c) 2017 FriendlyU, LLC. All rights reserved.
//

import Foundation

extension Int {
    public var friendlyNumber: String {
        return "\(self.friendlyDigits)\(self.placevalueLetter ?? "")"
    }
    
    public var friendlyDigits: Int {
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
    
    public var placevalueLetter: String? {
        switch(self / 1000) {
        case 1..<1000: return "K"
        case 1000..<100000: return "M"
        default: return nil
            
        }
    }
}
