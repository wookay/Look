//: Playground - noun: a place where people can play


import UIKit
import Look


let textGroup = "ABC"
let ctFont = CTFontCreateWithName("Helvetica", 80, nil)
var unichars: [UniChar] = Array<UniChar>(textGroup.utf16)
var glyphs: [CGGlyph] = Array<CGGlyph>(count: unichars.count, repeatedValue: 0)
let success: Bool = CTFontGetGlyphsForCharacters(ctFont, &unichars, &glyphs, unichars.count)
Look(CGGlyph: glyphs[0], CTFont: ctFont)

Look(CGGlyphs: glyphs, CTFont: ctFont)



let color = UIColor.redColor().CGColor
dump(color)



Look(CGColor: color)

Look(CGColor: color).debugDescription


let path = UIBezierPath().CGPath
dump(path)


Look(CGPath: path)
Look(CGPath: path).debugDescription


