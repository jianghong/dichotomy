//
//  Weapon.swift
//  Dichotomy
//
//  Created by Jackson Hong on 2014-08-23.
//  Copyright (c) 2014 Jackson Hong. All rights reserved.
//

import SpriteKit

class Weapon {
    let sprite: SKSpriteNode
    let damage: Int
    let positionOffset: CGFloat
    
    init(spriteName: String, damage: Int, positionOffset: CGFloat, width: CGFloat, height: CGFloat) {
        self.sprite = SKSpriteNode(imageNamed: spriteName)
        self.sprite.size = CGSize(width: width, height: height)
        self.damage = damage
        self.positionOffset = positionOffset
        // physics 
        self.sprite.physicsBody = SKPhysicsBody(texture: self.sprite.texture, size: self.sprite.size)
        self.sprite.physicsBody.categoryBitMask = DichoPhysicsCategories.Weapon
        self.sprite.physicsBody.contactTestBitMask = DichoPhysicsCategories.Enemy
        self.sprite.physicsBody.collisionBitMask = 0x0
    }
}
