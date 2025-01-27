//
//  GameActor.swift
//  ARcade
//
//  Created by Daniel Mina on 11/15/18.
//  Copyright © 2018 University of Houston-Clear lake (ARGuys). All rights reserved.
//

import Foundation
import SceneKit
import ARKit

class GameActor: GameObject {
    
    enum lifeState {
        case dead
        case alive
    }
    
    //class variables
    var health: Int
    var maxHealth: Int
    var damage: Int
    
    //initializer
    init(health h: Int, maxHealth mh: Int, damage d: Int, node n: SCNNode?){
        health = h
        maxHealth = mh
        damage = d
        
        //call super
        if let n = n {
            super.init(node: n)
        } else {
            super.init(node: nil)
        }
    }
    
    //class functions (all children will need these functions)
    func getHealth() -> Int{
        return health;
    }
    
    func getMaxHealth() -> Int{
        return maxHealth
    }
    
    func getDamage() -> Int{
        return damage;
    }
    
    
    
    func takeDamage(from damageTaken: Int) -> lifeState {
        health -= damageTaken
        
        //check if object died
        if health <= 0 {
            return .dead
        }
        return .alive
    }
    
    func heal(healAmount: Int){
        health += healAmount
        
        //make sure current health does not go above max health
        if health > maxHealth {
            health = maxHealth
        }
    }
    
    func death(){
    }
    
    func move(){
        
    }
    
    func shoot(){
        
    }
}
