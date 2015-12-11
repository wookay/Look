//
//  SpriteKitLook.swift
//  Look
//
//  Created by wookyoung on 12/12/15.
//  Copyright © 2015 factorcat. All rights reserved.
//

import SpriteKit

extension Look {
    public convenience init(SKSpriteNode sprite: SKSpriteNode) {
        self.init()
        self.object = sprite
        self.preview = .Sprite(sprite)
    }
}