/* Blackhawks program.

 1 - Create a list of players sorted by age
 
 2 - Create a list of players sorted by country
 
 3 - Calculate the average age of the players
 
 4 - Calculate the average height of the players
 
 5 - Determine the month in which most of the players birthday falls
 */

import UIKit

var dpindex = [Int:Int]()
var names = [String]()
var heightf = [Int]()
var heighti = [Int]()
var bday = [Int]()
var bmonth = [Int]()
var byear = [Int]()
var country = [String]()
var age = [Int]()
var sortedage = [Int]()
var sortedcountry = [Int]()
var avgyears: Double = 0
var avgfeet: Double = 0
var avginches: Double = 0
var birthdaymonths: [Int] = [0,0,0,0,0,0,0,0,0,0,0,0,0]



var i = 0
//Spencer Abbott
dpindex[24] = i;
names.append("Spencer Abbott")
heightf.append(5)
heighti.append(9)
bday.append(30)
bmonth.append(4)
byear.append(1988)
country.append("CAN")

if(bmonth[i] < 9){
    age.append(2015-byear[i])
}
else if(bmonth[i] == 9){
    if(bday[i] < 27){
        age.append(2015-byear[i])
    }
    else{
        age.append(2016-byear[i])
    }
}
else{
        age.append(2016-byear[i])
}

//Artem Anisimov
i+=1
dpindex[15] = i;
names.append("Artem Anisimov")
heightf.append(6)
heighti.append(4)
bday.append(24)
bmonth.append(5)
byear.append(1988)
country.append("RUS")

if(bmonth[i] < 9){
    age.append(2015-byear[i])
}
else if(bmonth[i] == 9){
    if(bday[i] < 27){
        age.append(2015-byear[i])
    }
    else{
        age.append(2016-byear[i])
    }
}
else{
    age.append(2016-byear[i])
}

//Kyle Baun
i+=1
dpindex[15] = i;
names.append("Kyle Baun")
heightf.append(6)
heighti.append(2)
bday.append(4)
bmonth.append(5)
byear.append(1992)
country.append("CAN")

if(bmonth[i] < 9){
    age.append(2015-byear[i])
}
else if(bmonth[i] == 9){
    if(bday[i] < 27){
        age.append(2015-byear[i])
    }
    else{
        age.append(2016-byear[i])
    }
}
else{
    age.append(2016-byear[i])
}


