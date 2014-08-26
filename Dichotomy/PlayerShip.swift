//
//  PlayerShip.swift
//  Dichotomy
//
//  Created by Jackson Hong on 2014-08-23.
//  Copyright (c) 2014 Jackson Hong. All rights reserved.
//

import SpriteKit

enum ShipType: Int {
    case Type0 = 0
    
    var spriteName: String {
        switch self {
        case .Type0:
            return "Spaceship"
        }
    }
    
    var shipName: String {
        switch self {
        case .Type0:
            return "Type 0"
        }
    }
}

class PlayerShip {
    let shipName: String
    let sprite: SKSpriteNode
    typealias currentWeapon = Laser
    var readiedShot: (leftShot: currentWeapon, rightShot: currentWeapon)
    
    init(shipType: ShipType) {
        self.shipName = shipType.shipName
        self.sprite = SKSpriteNode(imageNamed: shipType.spriteName)
        // y can't be 0 or else the half of the ship sprite will out of bounds of window
        self.sprite.size = CGSize(width: 50, height: 50)
        self.readiedShot = (currentWeapon(), currentWeapon())
    }
    
    func reload() {
        let leftShotX = self.sprite.position.x - self.readiedShot.leftShot.positionOffset
        self.readiedShot.leftShot.sprite.position = CGPoint(x: leftShotX, y: self.sprite.position.y)
        
        let rightShotX = self.sprite.position.x + self.readiedShot.rightShot.positionOffset
        self.readiedShot.rightShot.sprite.position = CGPoint(x: rightShotX, y: self.sprite.position.y)
    }
    
    func move(byX x: CGFloat) {
        self.sprite.removeAllActions()
        let moveAction = SKAction.moveByX(x, y: 0, duration: NSTimeInterval(1))
        self.sprite.runAction(moveAction)
    }
}
