//
//  GameScene.swift
//  Dichotomy
//
//  Created by Jackson Hong on 2014-08-23.
//  Copyright (c) 2014 Jackson Hong. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        let typeZeroShip = Type0()
        let shipSprite = SKSpriteNode(imageNamed: typeZeroShip.spriteName)
        // y can't be 0 or else the half of the ship sprite will out of bounds of window
        shipSprite.size = CGSize(width: 50, height: 50)
        shipSprite.position = CGPoint(x: self.frame.size.width / 2, y: shipSprite.size.height / 2)
        
        self.addChild(shipSprite)
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
