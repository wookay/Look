//: Playground - noun: a place where people can play

import Look
import C4

let image = C4Image("golang.png")
Look(c4: image)

let gen_image = C4Image(frame: C4Rect(0,0,100,100))
gen_image.generate(C4Checkerboard())
Look(c4: gen_image)
