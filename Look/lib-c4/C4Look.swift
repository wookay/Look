//
//  C4Look.swift
//  LookC4
//
//  Created by wookyoung on 12/11/15.
//  Copyright © 2015 factorcat. All rights reserved.
//

import Foundation
import C4

extension Look {
    public convenience init(c4: C4Image?) {
        self.init()
        if let cview = c4 {
            self.object = cview
            let frame = CGRect(origin: CGPointZero, size: CGSize(cview.originalSize))
            let view = UIView(frame: frame)
            view.backgroundColor = UIColor.clearColor()
            view.add(cview)
            self.preview = .View(view)
            self.canvas = view
        }
    }

    public convenience init(c4: C4View?) {
        self.init()
        if let cview = c4 {
            self.object = cview
            let view = UIView(frame: def.frame)
            view.backgroundColor = UIColor.clearColor()
            view.add(cview)
            self.preview = .View(view)
            self.canvas = view
        }
    }
}