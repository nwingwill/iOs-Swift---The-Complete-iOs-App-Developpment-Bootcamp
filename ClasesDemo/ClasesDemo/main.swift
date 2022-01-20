//
//  main.swift
//  ClasesDemo
//
//  Created by Nestor Blanco on 9/7/21.
//


let skeleton = Enemy(health: 100, attackStrenght: 10)
let skeleton2 = skeleton

skeleton.takeDamage(amount: 10)

print(skeleton2.health)

//print(skeleton.health)
//skeleton.move()
//skeleton.attack()

//let dragon = Dragon(health: 5, attackStrenght: 15)
//dragon.wingSpan = 5
//dragon.attackStrenght = 15
//dragon.talk(speech: "My teeth are swords! My claws are spears! My wings are a hurricane")
//dragon.move()
//dragon.attack()

