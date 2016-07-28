//
//  Monster.swift
//  HealthBar
//
//  Created by mitchell hudson on 7/28/16.
//  Copyright © 2016 mitchell hudson. All rights reserved.
//

import SpriteKit

class Monster: SKSpriteNode {
    
    var healthBar: HealthBar!
    var health: CGFloat = 100
    let totalHealth: CGFloat = 100
    
    
    func dealDamage(damage: CGFloat) {
        health -= damage
        healthBar.value = health / totalHealth
    }
    
    
    
    init(imageNamed: String) {
        let texture = SKTexture(imageNamed: imageNamed)
        
        super.init(texture: texture, color: UIColor.clearColor(), size: texture.size())
        
        name = "monster"
        
        healthBar = HealthBar()
        addChild(healthBar)
        healthBar.zPosition = 37
        healthBar.position.x = size.width / -2
        healthBar.position.y = size.height + 15
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
