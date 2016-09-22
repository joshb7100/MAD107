/* Decision making app, we are given a ball with certain attributes and based on whether those match the attributes that we prefer we will decide whether to use it and how pleased we are with it. */
import UIKit


/* Variables for the ball we're given to describe its attributes */
var color = "blue"
var shape = "triangle"
var pattern = "striped"
var size = "small"

/* Variable to store the number of attributes that matched what we want */
var matched = 0

/*Constants containing our preferred attributes for the ball */
let pcolor = "red"
let pshape = "oval"
let ppattern = "checkered"
let psize = "large"

/* Check each attribute with our preferred attribute and if it matches then we add 1 to the matched counter */
if(pcolor == color){
    matched+=1
}
if(pshape == shape){
    matched+=1
}
if(ppattern == pattern){
    matched+=1
}
if(psize == size){
    matched+=1
}

/* Based on the number of attributes that matched, make a decision on whether we'll use it and if we're happy with it. */
switch(matched){
case 4:
    print("Everything matches! I love it and will use it right away!")
case 2...3:
    print("A few things match, so I guess I can use it for a while.")
case 1:
    print("Practically nothing matches, I'd prefer a different one.")
case 0:
    print("This ball is terrrible! Nothing matches and I refuse to use it.")
default:
    print("Something went terribly wrong...")
}

