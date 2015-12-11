//
//  UIViewLook.swift
//  Look
//
//  Created by wookyoung on 11/27/15.
//  Copyright © 2015 factorcat. All rights reserved.
//

import UIKit

extension Look {
    public class func empty() -> Look {
        return Look(UIView: UIView(frame: CGRectZero))
    }
    
    public convenience init(UIView view: UIView?) {
        self.init()
        if let view = view {
            self.object = view
            if CGRectZero == view.frame {
                view.frame = def.frame
            }
            self.preview = .View(view)
            self.canvas = view
        }
    }
}