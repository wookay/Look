//: Playground - noun: a place where people can play

import UIKit

let layer = CALayer()
layer.backgroundColor = UIColor.greenColor().CGColor
layer.frame = CGRectMake(10, 10, 100, 50)
layer

layer.debugDescription


import Look
Look(layer: layer)

Look(layer: layer).debugDescription

