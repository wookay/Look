//: Playground - noun: a place where people can play


import CoreGraphics
import Look


let textGroup = "ABC"
var unichars: [UniChar] = Array<UniChar>(textGroup.utf16)
var glyphs: [CGGlyph] = Array<CGGlyph>(count: unichars.count, repeatedValue: 0)
let ctFont = CTFontCreateWithName("Helvetica", 80, nil)
let success: Bool = CTFontGetGlyphsForCharacters(ctFont, &unichars, &glyphs, unichars.count)
Look(CGGlyph: glyphs[0], CTFont: ctFont)

Look(CGGlyphs: glyphs, CTFont: ctFont)



let color = UIColor.greenColor().CGColor
color
dump(color)



Look(CGColor: color)

Look(CGColor: color).debugDescription


let path = UIBezierPath()
path.moveToPoint(CGPointZero)
path.addQuadCurveToPoint(CGPoint(x: 100, y: 0), controlPoint: CGPoint(x: 100, y: 90))
path.closePath()
path

let cgPath = path.CGPath
cgPath
dump(cgPath)


Look(CGPath: cgPath)
Look(CGPath: cgPath).debugDescription


