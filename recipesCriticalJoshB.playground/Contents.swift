//: Playground - noun: a place where people can play

import UIKit

/* Recipe multiplier. Input the inital ingredient amounts for a recipe and the number of servings you want and it will tell you the amount needed for the ingredients.
    for each ingredient input the amount, unit, and ingredient name. Duplicate ingredients and printouts as needed. */


//Give the serving size and input ingredients
let servings:Double = 3.5

//inputs for ingredient #1
var i1amount:Double = 1
var i1unit = "tbsps"
var i1name = "butter"

//inputs for ingredient #2
var i2amount:Double = 3
var i2unit = "cups"
var i2name = "water"

//inputs for ingredient #3
var i3amount:Double = 1
var i3unit = "cup"
var i3name = "chocolate chips"

//inputs for ingredient #4
var i4amount:Double = 0.5
var i4unit = "tsp"
var i4name = "flour"


//Calculate the desired quantity for the ingredients
i1amount = i1amount * servings
i2amount = i2amount * servings
i3amount = i3amount * servings
i4amount = i4amount * servings

//Output a string for each ingredient to say what is needed.

print("Use \(i1amount) \(i1unit) of \(i1name).")
print("Use \(i2amount) \(i2unit) of \(i2name).")
print("Use \(i3amount) \(i3unit) of \(i3name).")
print("Use \(i4amount) \(i4unit) of \(i4name).")