//: Playground - noun: a place where people can play

import UIKit
import Look

let view = UIView()
view.backgroundColor = UIColor.greenColor()
view

view.debugDescription

dump(view)


Look(UIView: view)

let look = Look.empty()
look.canvas?.backgroundColor = UIColor.purpleColor()
look