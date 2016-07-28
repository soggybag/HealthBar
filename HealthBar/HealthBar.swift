//
//  HealthBar.swift
//  HealthBar
//
//  Created by mitchell hudson on 7/28/16.
//  Copyright © 2016 mitchell hudson. All rights reserved.
//

import SpriteKit

class HealthBar: SKSpriteNode {
    
    var bar: SKSpriteNode!
    let barSize = CGSize(width: 64, height: 10)
    
    var value: CGFloat = 1 {
        didSet {
            setBarSize()
        }
    }
    
    func setBarSize() {
        bar.xScale = value
    }
    
    init() {
        
        super.init(texture: nil, color: UIColor.grayColor(), size: barSize)
        
        anchorPoint.x = 0
        
        bar = SKSpriteNode(color: UIColor.redColor(), size: barSize)
        bar.anchorPoint.x = 0
        
        addChild(bar)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
