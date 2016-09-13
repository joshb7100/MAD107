//: Playground - noun: a place where people can play

import UIKit

/* Section 1: Set up the variables to be calculated, a and b
 */
let a: Double = 4.1

let b: Double = 0

/* Section 2: Perform the designated operations */
//Addition operation
var addab: Double = a + b

//Subtraction operation
var subab: Double = a - b

//Mulitiplication operation
var mulab: Double = a * b

//Divide Operation
var divab: Double = 0
if(b != 0){
    divab = a/b
    }

var divba: Double = 0
if(a != 0){
    divba = b/a
}

//Percentage Operation

var perab: Double = 0
if(b != 0){
    perab = a/b * 100
}

var perba: Double = 0
if(a != 0){
    perba = b/a * 100
}

/* Section 3: Display the results to the screen.*/

//Addition printout
print("a plus b equals: \(addab)")

//Subtraction printout
print("a minus b equals: \(subab)")

//Multiplication printout
print("a times b equals: \(mulab)")

//Division printout
if(b == 0){
    print("Unable to divide a by b since b = 0")
    }
else{
    print("a divided by b equals: \(divab)")
    }

if(a == 0){
        print("Unable to divide b by a since a = 0")
    }
    else{
        print("b divided by a equals: \(divba)")
    }

//Percentage printout
if(b == 0){
    print("Unable to do a percentage of a by b since b = 0")
}
else{
    print("a is \(perab)% of b")
}

if(a == 0){
    print("Unable to do a percentage of b by a since a = 0")
}
else{
    print("b is \(perba)% of a")
}






