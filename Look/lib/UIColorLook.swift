//
//  UIColorLook.swift
//  Look
//
//  Created by wookyoung on 11/27/15.
//  Copyright © 2015 factorcat. All rights reserved.
//

import UIKit

extension Look {
    public convenience init(UIColor color: UIColor) {
        self.init()
        self.object = color
        self.preview = .Color(color)
    }
}

