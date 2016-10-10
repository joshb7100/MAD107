//Calculates the Pythagorrean for a third side when given either the two sides or one side and the hypotenuse.

import Darwin

//Side inputs: Input side lengths for any two sides, and then a negative number for the third so it know which to solve for.
var side1: Double = 3
var side2: Double = -1
var hypotenuse: Double = 5

//closure for calculating the hypotenuse
let hypotenusecalc = {(side1sqr: Double, side2sqr: Double)-> Double in
    var hypotenuse: Double = sqrt(side1sqr + side2sqr)
    return hypotenuse
}

//closure for calculating a side that isnt the hypotenuse
let sidecalc = {(hypotenuseSqr: Double, sideSqr: Double) -> Double in
    var otherside: Double = sqrt(hypotenuseSqr - sideSqr)
    return otherside
}

//Function which passes the squared sides to the closure that was passed
func thirdsidecalc(side1: Double, side2: Double, finalcalc: (Double, Double)->Double )->Double{
    let side1sqr: Double = side1 * side1
    let side2sqr: Double = side2 * side2
    return finalcalc( side1sqr, side2sqr)
}

//Check how many sides were given to us.
var validsides: Int = 0
if(side1 >= 0) {validsides += 1}
if(side2 >= 0) {validsides += 1}
if(hypotenuse >= 0) {validsides += 1}

//Based on the passed number of sides either give the error message or calculate the third side.
var thirdside: Double = -1
switch(validsides){
case 2:
        if(side1 < 0){
            thirdside = thirdsidecalc(hypotenuse, side2: side2, finalcalc: sidecalc)
        }
        else if(hypotenuse < 0){
            thirdside = thirdsidecalc(side1, side2: side2, finalcalc: hypotenusecalc)
        }
        else{
            thirdside = thirdsidecalc(hypotenuse, side2: side1, finalcalc: sidecalc)
        }
        print("The third side is: \(thirdside)")
case 3: print("Only input 2 sides of the triangle")
default: print("Not enough valid sides of the triangle")
}
