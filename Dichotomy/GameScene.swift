//
//  GameScene.swift
//  Dichotomy
//
//  Created by Jackson Hong on 2014-08-23.
//  Copyright (c) 2014 Jackson Hong. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    let ship: Type0!
    let shipSprite: SKSpriteNode!
    
    override init(size: CGSize) {
        super.init(size: size)
        self.ship = Type0()
        self.shipSprite = ship.sprite
        shipSprite.position = CGPoint(x: self.frame.size.width / 2, y: shipSprite.size.height / 2)
        self.addChild(shipSprite)
        
        let currWeapon = self.ship.readiedShot
        self.addChild(currWeapon.leftShot.sprite)
        self.addChild(currWeapon.rightShot.sprite)
        
        self.drawAndFireShots(currWeapon.leftShot.sprite)
        self.drawAndFireShots(currWeapon.rightShot.sprite)
    }
    
    required init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
    }
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
    }
    
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
    
    func drawAndFireShots(shotSprite: SKSpriteNode) {
        let fireWeapon = SKAction.moveByX(0, y: 600, duration: NSTimeInterval(0.30))
        let reloadAction = SKAction.runBlock({
            self.ship.reload()
        })
        let fireAndWait = SKAction.group([fireWeapon, reloadAction])
        let repeatShot = SKAction.repeatActionForever(fireAndWait)
        shotSprite.runAction(repeatShot)
    }
    
    func drawFirstWave() {
        let firstEnemy = EnemyShip(enemyType: EnemyType.HyruleWarrior, size: CGSize(width: 50, height: 80))
        let xPos = self.frame.size.width / 2
        let yPos = self.frame.size.height - (firstEnemy.sprite.size.height / 1.3)
        firstEnemy.sprite.position = CGPoint(x: xPos, y: yPos)
        self.addChild(firstEnemy.sprite)
    }
}
