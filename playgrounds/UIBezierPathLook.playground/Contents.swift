//: Playground - noun: a place where people can play

import UIKit
import Look

let path = UIBezierPath()
path.moveToPoint(CGPoint(x: 50, y: 90))
path.addLineToPoint(CGPoint(x: 0, y: 0))
path.addLineToPoint(CGPoint(x: 100, y: 0))
path.closePath()
path

path.debugDescription

Look(UIBezierPath: path)
