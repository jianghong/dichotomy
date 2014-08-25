//
//  Laser.swift
//  Dichotomy
//
//  Created by Jackson Hong on 2014-08-23.
//  Copyright (c) 2014 Jackson Hong. All rights reserved.
//

class Laser: Weapon {
    init() {
        super.init(spriteName: "laser", damage: 1, positionOffset: 15.0, width: 4.0, height: 30.0)
    }
}
