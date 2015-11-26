//
//  UIFontLook.swift
//  Look
//
//  Created by wookyoung on 11/26/15.
//  Copyright © 2015 factorcat. All rights reserved.
//

extension Look {
    public convenience init(font: UIFont?) {
        self.init()
        if let font = font {
            let attrs = [NSFontAttributeName: font]
            self.object = font
            self.preview = .AttributedString(NSAttributedString(string: font.fontName, attributes:attrs))
        }
    }
}


// PlaygroundQuickLook
//    case Text(String)
//    /// An integer numeric value.
//    case Int(Int64)
//    /// An unsigned integer numeric value.
//    case UInt(UInt64)
//    /// A single precision floating-point numeric value.
//    case Float(Float32)
//    /// A double precision floating-point numeric value.
//    case Double(Float64)
//    /// An image.
//    case Image(Any)
//    /// A sound.
//    case Sound(Any)
//    /// A color.
//    case Color(Any)
//    /// A bezier path.
//    case BezierPath(Any)
//    /// An attributed string.
//    case AttributedString(Any)
//    /// A rectangle.
//    ///
//    /// Uses explicit coordinates to avoid coupling a particular Cocoa type.
//    case Rectangle(Float64, Float64, Float64, Float64)
//    /// A point.
//    ///
//    /// Uses explicit coordinates to avoid coupling a particular Cocoa type.
//    case Point(Float64, Float64)
//    /// A size.
//    ///
//    /// Uses explicit coordinates to avoid coupling a particular Cocoa type.
//    case Size(Float64, Float64)
//    /// A logical value.
//    case Logical(Bool)
//    /// A range.
//    ///
//    /// Uses explicit values to avoid coupling a particular Cocoa type.
//    case Range(UInt64, UInt64)
//    /// A GUI view.
//    ///
//    /// Uses an Any to avoid coupling a particular Cocoa type.
//    case View(Any)
//    /// A graphical sprite.
//    ///
//    /// Uses an Any to avoid coupling a particular Cocoa type.
//    case Sprite(Any)
//    /// A Uniform Resource Locator.
//    case URL(String)