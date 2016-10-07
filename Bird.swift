//
//  Bird.swift
//  ClassesNenums
//
//  Created by James Campagno on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Speed: Int {
    
    case slow = 1
    case medium
    case fast
    
    func isFaster(thanSpeed: Speed) -> Bool {
        
        switch self {
        case .slow:
            return false
        case .medium:
            return false
        case .fast:
            return true
        }
    }
}



enum Diet {
    
    case meatEater
    case vegetarian

}



enum Sex {
    
    case male
    case female
    
    
}


class Trex {
    var speed: Speed = .fast
    var diet: Diet = .meatEater
    var name: String
    var sex: Sex
    var isAlive: Bool = true
    
    init(name: String, sex: Sex){
        self.name = name
        self.sex = sex
    }
    
    func speak() -> String {
            return ("ROAAAWWWWRRRRR!!!!!!")
    }
    
    func isFaster(thanTrex: Trex) -> Bool {
           
            switch thanTrex.speed {
                case .fast:
                    return false
                case .medium:
                    return true
                case .slow:
                    return true
            }
    }
    
    func eat(otherTrex: Trex) -> Bool {
        
        switch otherTrex.speed {
        
            case .fast:
                return false
           
            case .medium:
                otherTrex.isAlive = false
                return true
        
            case .slow:
                otherTrex.isAlive = false
                return true
        }
        
    }
    
}









