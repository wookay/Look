//
//  CoreGraphicsLook.swift
//  Look
//
//  Created by wookyoung on 11/27/15.
//  Copyright © 2015 factorcat. All rights reserved.
//

import CoreGraphics
import UIKit

extension Look {
    public convenience init(CGColor cgColor: CGColor) {
        self.init()
        self.object = cgColor
        self.preview = .Color(UIColor(CGColor: cgColor))
    }
    
    public convenience init(CGPath cgPath: CGPath) {
        self.init()
        self.object = cgPath
        let path = UIBezierPath()
        path.CGPath = cgPath
        self.preview = .BezierPath(path)
    }

    public convenience init(CGGlyph cgGlyph: CGGlyph, CTFont ctFont: CTFont) {
        self.init()
        if let cgPath: CGPath = CTFontCreatePathForGlyph(ctFont, cgGlyph, nil) {
            let path = UIBezierPath()
            path.CGPath = cgPath
            self.preview = .BezierPath(path)
        }
    }
    
    public convenience init(CGGlyphs glyphs: [CGGlyph], CTFont ctFont: CTFont) {
        self.init()
        var x: CGFloat = 0
        var advances = Array<CGSize>(count: glyphs.count, repeatedValue: CGSize.zero)
        CTFontGetAdvancesForGlyphs(ctFont, CTFontOrientation.Default, glyphs, &advances, glyphs.count)
        let mutablePath = CGPathCreateMutable()
        for (idx, glyph) in glyphs.enumerate() {
            if let cgPath: CGPath = CTFontCreatePathForGlyph(ctFont, glyph, nil) {
                x += advances[idx].width
                var move: CGAffineTransform = CGAffineTransformMakeTranslation(x, 0)
                CGPathAddPath(mutablePath, &move, cgPath)
            }
        }
        CGPathCloseSubpath(mutablePath)
        let path = UIBezierPath()
        path.CGPath = mutablePath
        self.preview = .BezierPath(path)
    }
    
    public convenience init(CGImageRef imageRef: CGImageRef) {
        self.init()
        let image = UIImage(CGImage: imageRef)
        self.preview = .Image(image)
    }
}


// https://developer.apple.com/library/watchos/documentation/CoreGraphics/Reference/CoreGraphics_Framework/index.html
//CGBitmapContext
//Describes an opaque type for managing drawing operations in a bitmap.
//CGColor
//Describes a representation of color and opacity (alpha value).
//CGColorSpace
//Describes an opaque type for specifying color space information.
//CGContext
//Describes a Quartz 2D drawing destination.
//CGDataConsumer
//Describes an opaque data type for writing image or PDF data.
//CGDataProvider
//Describes an opaque data type for reading image data.
//CGFont
//Describes a representation of a font.
//CGFunction
//Describes a facility for defining and using callback functions.
//CGGradient
//Describes the functions that create and operate on Quartz gradient objects.
//CGImage
//Describes a representation of an image.
//CGLayer
//Describes the opaque type for creating and drawing to a Quartz layer.
//CGPath
//Describes a vector-based path consisting of line and curve segments.
//CGPattern
//Describes a representation of a fill pattern.
//CGPDFArray
//Describes an array structure in a PDF document.
//CGPDFContentStream
//Describes the appearance of a PDF page.
//CGPDFContext
//Describes a Quartz PDF drawing destination.
//CGPDFDictionary
//Describes a dictionary structure in a PDF document.
//CGPDFDocument
//Describes a document containing PDF data.
//CGPDFObject
//Describes a PDF object in a PDF document.
//CGPDFOperatorTable
//Describes a collection of PDF operators and associated callback functions.
//CGPDFPage
//Describes a page in a PDF document.
//CGPDFScanner
//Describes an opaque type for parsing a PDF content stream.
//CGPDFStream
//Describes a PDF data stream, which typically represents an image or a page description.
//CGPDFString
//Describes a character string in a PDF document.
//CGShading
//Describes a gradient fill pattern.
