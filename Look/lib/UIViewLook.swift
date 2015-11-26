//
//  UIViewLook.swift
//  Look
//
//  Created by wookyoung on 11/27/15.
//  Copyright © 2015 factorcat. All rights reserved.
//

extension Look {
    public convenience init(view: UIView?) {
        self.init()
        if let view = view {
            self.object = view
            if CGRectZero == view.frame {
                view.frame = def.frame
            }
            self.preview = .View(view)
        }
    }
}