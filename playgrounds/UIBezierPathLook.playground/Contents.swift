//: Playground - noun: a place where people can play

import UIKit

let path = UIBezierPath()
path.moveToPoint(CGPoint(x: 50, y: 90))
path.addLineToPoint(CGPoint(x: 0, y: 0))
path.addLineToPoint(CGPoint(x: 100, y: 0))
path.closePath()
path

path.debugDescription


import Look
Look(path: path)
Look(path: path).debugDescription
