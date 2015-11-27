//
//  CoreTextLook.swift
//  Look
//
//  Created by wookyoung on 11/27/15.
//  Copyright © 2015 factorcat. All rights reserved.
//

import CoreText

extension Look {
    public convenience init(CTFont ctFont: CTFont) {
        self.init()
        if let font: UIFont = UIFont(name: CTFontCopyFullName(ctFont) as String, size: CTFontGetSize(ctFont)) {
            let attrs = [NSFontAttributeName: font]
            self.preview = .AttributedString(NSAttributedString(string: font.fontName, attributes:attrs))
        }
    }
}