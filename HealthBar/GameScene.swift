//
//  GameScene.swift
//  HealthBar
//
//  Created by mitchell hudson on 7/28/16.
//  Copyright (c) 2016 mitchell hudson. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        
        let m1 = Monster(imageNamed: "a")
        addChild(m1)
        m1.position = CGPoint(x: 100, y: 100)
        
        let m2 = Monster(imageNamed: "b")
        addChild(m2)
        m2.position = CGPoint(x: 180, y: 100)
        
        let m3 = Monster(imageNamed: "c")
        addChild(m3)
        m3.position = CGPoint(x: 280, y: 100)
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        let touch = touches.first!
        let location = touch.locationInNode(self)
        let node = nodeAtPoint(location)
        if node.name == "monster" {
            let monster = node as! Monster
            monster.dealDamage(10)
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
