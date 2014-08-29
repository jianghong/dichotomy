//
//  DichotomyLogic.swift
//  Dichotomy
//
//  Created by Jackson Hong on 2014-08-25.
//  Copyright (c) 2014 Jackson Hong. All rights reserved.
//

import SpriteKit

protocol DichotomyDelegate {
    func gameDidBegan(dicho: Dichotomy)
    func firstWaveDidSpawn(dicho: Dichotomy)
}

class Dichotomy {
    var delegate: DichotomyDelegate?
    
    init() {
        
    }
    
    func beginGame() {
        self.delegate?.gameDidBegan(self)
    }
    
    func loadFirstWave() {
        self.delegate?.firstWaveDidSpawn(self)
    }
}
