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
    let totalHealth: CGFloat = 100
    var health: CGFloat = 100 {
        didSet {
            healthBar.value = health / totalHealth
        }
    }
    
    
    func dealDamage(damage: CGFloat) {
        health -= damage
        if health <= 0 {
            destroy()
        }
    }
    
    
    
    func destroy() {
        removeFromParent()
    }
    
    
    
    init(imageNamed: String) {
        let texture = SKTexture(imageNamed: imageNamed)
        
        super.init(texture: texture, color: UIColor.clearColor(), size: texture.size())
        
        name = "monster"
        
        healthBar = HealthBar()
        addChild(healthBar)
        healthBar.zPosition = 37
        healthBar.position.x = size.width / -2
        healthBar.position.y = 80
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
