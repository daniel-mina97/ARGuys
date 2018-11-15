//
//  PGameAction.swift
//  ARcade
//
//  Created by Daniel Mina on 11/8/18.
//  Copyright © 2018 University of Houston-Clear lake (ARGuys). All rights reserved.
//

import Foundation

class GameAction {
    static var overallGameActionID : Int = 0
    
    var gameActionID : Int = getGameActionID()
    
    static func getGameActionID() -> Int {
        overallGameActionID += 1
        return overallGameActionID
    }
}