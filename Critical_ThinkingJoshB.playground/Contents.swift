//: Playground - noun: a place where people can play

import UIKit

//How old am I going to be app!?
//Input your birthday and current dates to find out what age you will be on your next birthday!

/*Input your Birthday into the birthday variables below. 
 bmonth = birthday month
 bday = birthday day
 byear = birthday year (full year)*/
var bmonth = 07
var bday = 16
var byear = 1994
/*Input the current date into the current date variables below.
 cmonth = birthday month
 cday = birthday day
 cyear = birthday year */
var cmonth = 09
var cday = 06
var cyear = 2016

var age = 0
var bdayistoday = 0

//First checks if your birthday has yet to come in the current year.
if(cmonth<bmonth){
    age = cyear - byear
}
//Then it checks if you're in your birthday month and if so checks if you've passed your birthday
else if(cmonth == bmonth){
    if(cday<bday){
        age = cyear - byear
    }
    else if(cday == bday){
        age = cyear - byear
        bdayistoday = 1
    }
}
//If neither of those were right then your birthday must be next year, so it adds an extra 1 to the algorithm
else{
    age = cyear - byear + 1
}

//prints out a Congratulatory message.
if(bdayistoday == 1){
    print("Today's your birthday! Congrats, you are \(age)!")
}
else{
    print("Congrats! You will be \(age) on your next birthday!")
}


