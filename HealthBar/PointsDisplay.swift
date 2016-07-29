//
//  PointsDisplay.swift
//  HealthBar
//
//  Created by mitchell hudson on 7/28/16.
//  Copyright © 2016 mitchell hudson. All rights reserved.
//

import SpriteKit

class PointsDisplay: SKLabelNode {
    init(points: String) {
        super.init()
        
        self.fontName = "Helvetica"
        self.fontSize = 22
        self.fontColor = UIColor.whiteColor()
        
        self.text = points
        
        self.zPosition = 44
        
        let vector = CGVector(dx: 0, dy: 120)
        let moveUp = SKAction.moveBy(vector, duration: 1.4)
        let fadeOut = SKAction.fadeOutWithDuration(1.4)
        let moveFadeGroup = SKAction.group([moveUp, fadeOut])
        let remove = SKAction.removeFromParent()
        let sequence = SKAction.sequence([moveFadeGroup, remove])
        runAction(sequence)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}