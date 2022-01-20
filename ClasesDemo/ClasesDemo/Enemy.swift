//
//  Enemy.swift
//  ClasesDemo
//
//  Created by Nestor Blanco on 9/7/21.
//

class Enemy {
    
    var health : Int
    var attackStrenght : Int
    
    init(health : Int, attackStrenght : Int) {
        
        self.health = health
        self.attackStrenght = attackStrenght
        
    }
    
    func takeDamage(amount : Int) {
        health = health - amount
    }
    
    func move() {
        print("Walk Forwards")
    }
    
    func attack() {
        print("Land a hit, does \(attackStrenght) damage.")
    }
    
}
