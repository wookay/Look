//
//  CALayerLook.swift
//  Look
//
//  Created by wookyoung on 11/26/15.
//  Copyright © 2015 factorcat. All rights reserved.
//

import UIKit

extension Look {
    public convenience init(CALayer layer: CALayer?) {
        self.init()
        if let layer = layer {
            let view = UIView(frame: def.frame)
            view.layer.addSublayer(layer)
            self.object = layer
            self.preview = .View(view)
            self.canvas = view
        }
    }
}