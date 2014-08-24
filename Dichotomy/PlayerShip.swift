//
//  PlayerShip.swift
//  Dichotomy
//
//  Created by Jackson Hong on 2014-08-23.
//  Copyright (c) 2014 Jackson Hong. All rights reserved.
//

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
    let spriteName: String
    
    init(shipType: ShipType) {
        self.shipName = shipType.shipName
        self.spriteName = shipType.spriteName
    }
}
