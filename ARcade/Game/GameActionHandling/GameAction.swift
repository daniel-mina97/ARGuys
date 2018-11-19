//
//  PGameAction.swift
//  ARcade
//
//  Created by Daniel Mina on 11/8/18.
//  Copyright © 2018 University of Houston-Clear lake (ARGuys). All rights reserved.
//

import Foundation

class GameAction {
    
    static var overallActionID: Int = 0
    
    let type: ActionTypes
    let actionID: Int
    let sourceID: Int?
    let targetID: Int?
    
    init(type: ActionTypes) {
        self.type = type
        self.actionID = GameAction.overallActionID
        GameAction.overallActionID += 1
        self.sourceID = nil
        self.targetID = nil
    }
}

enum ActionTypes {
    case shoot
    case pickup
    case spawnAlien
    case spawnPickup
    case spawnPlayer
    case spawCity
    case cityDestroyed
}
