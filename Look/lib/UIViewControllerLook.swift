//
//  UIViewControllerLook.swift
//  Look
//
//  Created by wookyoung on 11/27/15.
//  Copyright © 2015 factorcat. All rights reserved.
//

extension Look {
    public convenience init(vc: UIViewController?) {
        self.init()
        if let vc = vc {
            self.object = vc
            if CGRectZero == vc.view.frame {
                vc.view.frame = def.frame
            }
            self.preview = .View(vc.view)
        }
    }
}