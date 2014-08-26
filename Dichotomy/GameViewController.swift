//
//  GameViewController.swift
//  Dichotomy
//
//  Created by Jackson Hong on 2014-08-23.
//  Copyright (c) 2014 Jackson Hong. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController, UIGestureRecognizerDelegate {

    var scene: GameScene!
    var panPointReference:CGPoint?

    @IBAction func didPan(sender: UIPanGestureRecognizer) {
        if sender.state == .Began {
            panPointReference = sender.translationInView(self.view)
        } else {
            let currentPoint = sender.translationInView(self.view)
            if sender.velocityInView(self.view).x < 0 {
                // move left
                let m = -abs(panPointReference!.x - currentPoint.x)
                println("move x by: \(m), velocity: \(sender.velocityInView(self.view))")
                scene.ship.move(byX: m)
            } else {
                // move right
                let m = abs(panPointReference!.x - currentPoint.x)
                println("move x by: \(m)")
                scene.ship.move(byX: m)
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        /* Pick a size for the scene */
        self.scene = GameScene(size: self.view.bounds.size)
        // Configure the view.
        let skView = self.view as SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        
        /* Sprite Kit applies additional optimizations to improve rendering performance */
        skView.ignoresSiblingOrder = true
        
        /* Set the scale mode to scale to fit the window */
        scene.scaleMode = .AspectFill
        
        skView.presentScene(scene)
    }


    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
