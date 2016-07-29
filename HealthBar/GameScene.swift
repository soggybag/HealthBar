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
        m1.position = CGPoint(x: 80, y: view.frame.size.height / 2)
        
        let m2 = Monster(imageNamed: "b")
        addChild(m2)
        m2.position = CGPoint(x: view.frame.size.width / 2, y: view.frame.size.height / 2)
        
        let m3 = Monster(imageNamed: "c")
        addChild(m3)
        m3.position = CGPoint(x: view.frame.size.width - 80, y: view.frame.size.height / 2)
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       /* Called when a touch begins */
        
        let touch = touches.first!
        let location = touch.locationInNode(self)
        let node = nodeAtPoint(location)
        if node.name == "monster" {
            let monster = node as! Monster
            monster.dealDamage(10)
            let points = PointsDisplay(points: "100")
            points.position = monster.position
            addChild(points)
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
