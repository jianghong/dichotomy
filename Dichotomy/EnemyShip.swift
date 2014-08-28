//
//  EnemyShip.swift
//  Dichotomy
//
//  Created by Jackson Hong on 2014-08-27.
//  Copyright (c) 2014 Jackson Hong. All rights reserved.
//

import SpriteKit

enum EnemyType: Int {
    case HyruleWarrior
    
    var spriteName: String {
        switch self {
        case .HyruleWarrior:
            return "enemyship1"
        }
    }
    
    var enemyName: String {
        switch self {
        case .HyruleWarrior:
            return "Hyrule Warrior"
        }
    }
}

class EnemyShip {
    let name: String
    let sprite: SKSpriteNode
    
    init(enemyType: EnemyType, size: CGSize) {
        self.sprite = SKSpriteNode(imageNamed: enemyType.spriteName)
        self.sprite.size = size
        self.name = enemyType.enemyName
    }
}
