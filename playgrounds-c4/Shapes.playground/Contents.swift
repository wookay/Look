//: Playground - noun: a place where people can play

import Look
import C4

let square = C4Rectangle(frame: C4Rect(10,10,70,70))
square.fillColor = green
square
square.debugDescription

Look(c4: square)
Look(c4: square).debugDescription

let circle = C4Circle(center: C4Point(50,50), radius: 30)
circle.fillColor = green

Look(c4: circle)

let ellipse = C4Ellipse(frame: C4Rect(0,0,90,50))
ellipse.center = C4Point(70, 50)
ellipse.fillColor = green
Look(c4: ellipse)

let points = (C4Point(50,50), C4Point(150,50))
let line = C4Line(points)
line.lineWidth = 7
line.strokeColor = green
Look(c4: line)


let tri_points = [C4Point(100,10), C4Point(50,80), C4Point(150,80)]
let triangle = C4Triangle(tri_points)
triangle.lineWidth = 7
triangle.strokeColor = green
Look(c4: triangle)

let poly_points = [C4Point(50,50), C4Point(100,10), C4Point(150,50), C4Point(100,90)]
let polygon = C4Polygon(poly_points)
polygon.lineWidth = 7
polygon.strokeColor = green
Look(c4: polygon)

let arc = C4Arc(center: C4Point(100,20), radius: 50, start: M_PI, end: 2 * M_PI)
arc.lineWidth = 7
arc.strokeColor = green
arc.fillColor = clear
Look(c4: arc)

let wedge = C4Wedge(center: C4Point(100,50), radius: 30, start: 0.25 * M_PI, end: -0.25 * M_PI)
wedge.lineWidth = 7
wedge.strokeColor = green
wedge.fillColor = clear
Look(c4: wedge)

let string = "C4"
let textShape = C4TextShape(text: string)!
textShape.center = C4Point(100,50)
Look(c4: textShape)
