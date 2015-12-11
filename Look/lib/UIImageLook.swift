//
//  UIImageLook.swift
//  Look
//
//  Created by wookyoung on 11/27/15.
//  Copyright © 2015 factorcat. All rights reserved.
//

import UIKit

extension Look {
    public convenience init(UIImage image: UIImage?) {
        self.init()
        if let image = image {
            self.object = image
            self.preview = .Image(image)
        }
    }
}