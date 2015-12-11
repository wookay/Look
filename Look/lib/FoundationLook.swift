//
//  FoundationLook.swift
//  Look
//
//  Created by wookyoung on 11/27/15.
//  Copyright © 2015 factorcat. All rights reserved.
//

import Foundation

extension Look {
    public convenience init(Int n: Int) {
        self.init()
        self.object = n
        self.preview = .Text(String(n)) // .Int
    }

    public convenience init(Range range: Range<Int>) {
        self.init()
        self.object = String(range)
        self.preview = .Text(String(range)) // .Range
    }
    
    public convenience init(Bool bool: Bool) {
        self.init()
        self.object = String(bool)
        self.preview = .Text(String(bool)) // .Logical
    }
}