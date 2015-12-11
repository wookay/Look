//
//  UIBezierPathLook.swift
//  Look
//
//  Created by wookyoung on 11/27/15.
//  Copyright © 2015 factorcat. All rights reserved.
//

import UIKit

extension Look {
    public convenience init(UIBezierPath path: UIBezierPath?) {
        self.init()
        if let path = path {
            self.object = path
            self.preview = .BezierPath(path)
        }
    }
}