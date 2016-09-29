/* Blackhawks program.

 1 - Create a list of players sorted by age
 
 2 - Create a list of players sorted by country
 
 3 - Calculate the average age of the players
 
 4 - Calculate the average height of the players
 
 5 - Determine the month in which most of the players birthday falls
 */

import UIKit

//Set up the dictionary, and all the arrays used to store info on players
var dpindex = [Int:Int]()
var names = [String]()
var heightf = [Int]()
var heighti = [Int]()
var bday = [Int]()
var bmonth = [Int]()
var byear = [Int]()
var country = [String]()
var age = [Int]()
//Arrays and variables used in the actual problem solving
var sortedage = [Int]()
var sortedcountry = [Int]()
var avgage: Double = 0
var avgfeet: Double = 0
var avginches: Double = 0
var birthdaymonths: [Int] = [0,0,0,0,0,0,0,0,0,0,0,0,0]

/*Set up all the player info, each player block will input their playernumber:arrayindex value into the dictionary
Then all of the necessary data will be appended to the arrays which will be at the array index.
Once the given info is inputted it will calculate the players age and append that to the age array as well. */

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
dpindex[39] = i;
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

//Sam Carrick
i+=1
dpindex[37] = i;
names.append("Sam Carrick")
heightf.append(6)
heighti.append(0)
bday.append(4)
bmonth.append(2)
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

//Alexander DeBrincat
i+=1
dpindex[23] = i;
names.append("Alexander DeBrincat")
heightf.append(5)
heighti.append(7)
bday.append(18)
bmonth.append(12)
byear.append(1997)
country.append("USA")

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

//Andrew Desjardins
i+=1
dpindex[11] = i;
names.append("Andrew Desjardins")
heightf.append(6)
heighti.append(1)
bday.append(27)
bmonth.append(7)
byear.append(1986)
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

//Alexandre Fortin
i+=1
dpindex[82] = i;
names.append("Alexandre Fortin")
heightf.append(6)
heighti.append(0)
bday.append(25)
bmonth.append(2)
byear.append(1997)
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

//Ryan Hartman
i+=1
dpindex[38] = i;
names.append("Ryan Hartman")
heightf.append(6)
heighti.append(0)
bday.append(20)
bmonth.append(9)
byear.append(1994)
country.append("USA")

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

//Vincent Hinostroza
i+=1
dpindex[48] = i;
names.append("Vincent Hinostroza")
heightf.append(5)
heighti.append(9)
bday.append(3)
bmonth.append(4)
byear.append(1994)
country.append("USA")

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

//Marian Hossa
i+=1
dpindex[81] = i;
names.append("Marian Hossa")
heightf.append(6)
heighti.append(1)
bday.append(12)
bmonth.append(1)
byear.append(1979)
country.append("SVK")

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

//Luke Johnson
i+=1
dpindex[62] = i;
names.append("Luke Johnson")
heightf.append(5)
heighti.append(11)
bday.append(19)
bmonth.append(9)
byear.append(1994)
country.append("USA")

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

//Patrick Kane
i+=1
dpindex[88] = i;
names.append("Patrick Kane")
heightf.append(5)
heighti.append(11)
bday.append(19)
bmonth.append(11)
byear.append(1988)
country.append("USA")

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

//Tanner Kero
i+=1
dpindex[67] = i;
names.append("Tanner Kero")
heightf.append(6)
heighti.append(0)
bday.append(24)
bmonth.append(7)
byear.append(1992)
country.append("USA")

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

//Graham Knott
i+=1
dpindex[58] = i;
names.append("Graham Knott")
heightf.append(6)
heighti.append(3)
bday.append(13)
bmonth.append(1)
byear.append(1997)
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

//Marcus Kruger
i+=1
dpindex[16] = i;
names.append("Marcus Kruger")
heightf.append(6)
heighti.append(0)
bday.append(27)
bmonth.append(5)
byear.append(1990)
country.append("SWE")

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

//Pierre-Cedric Labrie
i+=1
dpindex[26] = i;
names.append("Pierre-Cedric Labrie")
heightf.append(6)
heighti.append(3)
bday.append(6)
bmonth.append(12)
byear.append(1986)
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

//Martin Lundberg
i+=1
dpindex[28] = i;
names.append("Martin Lundberg")
heightf.append(6)
heighti.append(0)
bday.append(7)
bmonth.append(6)
byear.append(1990)
country.append("SWE")

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

//Brandon Mashinter
i+=1
dpindex[53] = i;
names.append("Brandon Mashinter")
heightf.append(6)
heighti.append(4)
bday.append(20)
bmonth.append(9)
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

//Mark McNeill
i+=1
dpindex[41] = i;
names.append("Mark McNeill")
heightf.append(6)
heighti.append(2)
bday.append(22)
bmonth.append(2)
byear.append(1993)
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

//Tyler Motte
i+=1
dpindex[64] = i;
names.append("Tyler Motte")
heightf.append(5)
heighti.append(9)
bday.append(10)
bmonth.append(3)
byear.append(1995)
country.append("USA")

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

//Artemi Panarin
i+=1
dpindex[72] = i;
names.append("Artemi Panarin")
heightf.append(5)
heighti.append(11)
bday.append(30)
bmonth.append(10)
byear.append(1991)
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

//Richard Panik
i+=1
dpindex[14] = i;
names.append("Richard Panik")
heightf.append(6)
heighti.append(1)
bday.append(7)
bmonth.append(2)
byear.append(1991)
country.append("SVK")

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

//Dennis Rasmussen
i+=1
dpindex[70] = i;
names.append("Dennis Rasmussen")
heightf.append(6)
heighti.append(3)
bday.append(3)
bmonth.append(7)
byear.append(1990)
country.append("SWE")

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

//Nick Schmaltz
i+=1
dpindex[8] = i;
names.append("Nick Schmaltz")
heightf.append(6)
heighti.append(0)
bday.append(23)
bmonth.append(2)
byear.append(1996)
country.append("USA")

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

//Jonathan Toews
i+=1
dpindex[19] = i;
names.append("Jonathan Toews")
heightf.append(6)
heighti.append(2)
bday.append(29)
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

//Jordin Tootoo
i+=1
dpindex[22] = i;
names.append("Jordin Tootoo")
heightf.append(5)
heighti.append(9)
bday.append(2)
bmonth.append(2)
byear.append(1983)
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

//Brian Cambell
i+=1
dpindex[51] = i;
names.append("Brian Campbell")
heightf.append(5)
heighti.append(10)
bday.append(23)
bmonth.append(5)
byear.append(1979)
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

//Carl Dahlstrom
i+=1
dpindex[63] = i;
names.append("Carl Dahlstrom")
heightf.append(6)
heighti.append(4)
bday.append(28)
bmonth.append(1)
byear.append(1995)
country.append("SWE")

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

//Gustav Forsling
i+=1
dpindex[42] = i;
names.append("Gustav Forsling")
heightf.append(5)
heighti.append(11)
bday.append(12)
bmonth.append(6)
byear.append(1996)
country.append("SWE")

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
//Dillon Fournier
i+=1
dpindex[45] = i;
names.append("Dillon Fournier")
heightf.append(6)
heighti.append(2)
bday.append(15)
bmonth.append(6)
byear.append(1994)
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

//Erik Gustafsson
i+=1
dpindex[56] = i;
names.append("Erik Gustafsson")
heightf.append(6)
heighti.append(0)
bday.append(14)
bmonth.append(3)
byear.append(1992)
country.append("SWE")

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

//Niklas Hjalmarsson
i+=1
dpindex[4] = i;
names.append("Niklas Hjalmarsson")
heightf.append(6)
heighti.append(3)
bday.append(6)
bmonth.append(6)
byear.append(1987)
country.append("SWE")

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

//Duncan Keith
i+=1
dpindex[2] = i;
names.append("Duncan Keith")
heightf.append(6)
heighti.append(1)
bday.append(16)
bmonth.append(7)
byear.append(1983)
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

//Michael Kempny
i+=1
dpindex[6] = i;
names.append("Michael Kempny")
heightf.append(6)
heighti.append(0)
bday.append(8)
bmonth.append(9)
byear.append(1990)
country.append("CZE")

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

//Robin Norell
i+=1
dpindex[76] = i;
names.append("Robin Norell")
heightf.append(5)
heighti.append(11)
bday.append(18)
bmonth.append(2)
byear.append(1995)
country.append("SWE")

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

//Ville Pokka
i+=1
dpindex[17] = i;
names.append("Ville Pokka")
heightf.append(6)
heighti.append(0)
bday.append(3)
bmonth.append(6)
byear.append(1994)
country.append("FIN")

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

//Michal Rozsival
i+=1
dpindex[32] = i;
names.append("Michal Rozsival")
heightf.append(6)
heighti.append(1)
bday.append(3)
bmonth.append(9)
byear.append(1978)
country.append("CZE")

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

//Cameron Schilling
i+=1
dpindex[47] = i;
names.append("Cameron Schilling")
heightf.append(6)
heighti.append(2)
bday.append(7)
bmonth.append(10)
byear.append(1988)
country.append("USA")

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

//Brent Seabrook
i+=1
dpindex[7] = i;
names.append("Brent Seabrook")
heightf.append(6)
heighti.append(3)
bday.append(20)
bmonth.append(4)
byear.append(1985)
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

//Viktor Svedberg
i+=1
dpindex[43] = i;
names.append("Viktor Svedberg")
heightf.append(6)
heighti.append(8)
bday.append(24)
bmonth.append(5)
byear.append(1991)
country.append("SWE")

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

//Nolan Valleau
i+=1
dpindex[75] = i;
names.append("Nolan Valleau")
heightf.append(6)
heighti.append(1)
bday.append(15)
bmonth.append(11)
byear.append(1992)
country.append("USA")

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

//Trevor van Riemsdyk
i+=1
dpindex[57] = i;
names.append("Trevor van Riemsdyk")
heightf.append(6)
heighti.append(2)
bday.append(24)
bmonth.append(7)
byear.append(1991)
country.append("USA")

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

//Mac Carruth
i+=1
dpindex[60] = i;
names.append("Mac Carruth")
heightf.append(6)
heighti.append(2)
bday.append(25)
bmonth.append(3)
byear.append(1992)
country.append("USA")

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

//Corey Crawford
i+=1
dpindex[50] = i;
names.append("Corey Crawford")
heightf.append(6)
heighti.append(2)
bday.append(31)
bmonth.append(12)
byear.append(1984)
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

//Scott Darling
i+=1
dpindex[33] = i;
names.append("Scott Darling")
heightf.append(6)
heighti.append(6)
bday.append(22)
bmonth.append(12)
byear.append(1988)
country.append("USA")

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

//Lars Johansson
i+=1
dpindex[31] = i;
names.append("Lars Johansson")
heightf.append(6)
heighti.append(1)
bday.append(11)
bmonth.append(7)
byear.append(1987)
country.append("SWE")

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


/* //Code to swap out the age appending from within the player blocks and do it at the end. Wait til it works normally before uncommenting.
for i in byear{
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
}
*/

// 1 - Create a list of players sorted by age
//Populate the sortedage array with the playernumbers to be sorted.
for key in dpindex.keys{
sortedage.append(key)
sortedcountry.append(key)
}

//Do a for loop in order to do a bubblesort on the array.
for i = 0; i < sortedage.count - 1; i+=1{
	//compare players birth year, if year is older move them up in the array
	if(byear[dpindex[sortedage[i]]]< byear[dpindex[sortedage[i+1]]]){
	var tempkey = sortedage[i+1]
	sortedage[i+1] = sortedage[i]
	sortedage[i] = tempkey
	}
	//When birthyears are equal go to the birthmonth or birthday etc.
	else if(byear[dpindex[sortedage[i]]]== byear[dpindex[sortedage[i+1]]]){
		if(bmonth[dpindex[sortedage[i]]]< bmonth[dpindex[sortedage[i+1]]]){
		var tempkey = sortedage[i+1]
		sortedage[i+1] = sortedage[i]
		sortedage[i] = tempkey
		}
		else if(bmonth[dpindex[sortedage[i]]]== bmonth[dpindex[sortedage[i+1]]]){
			if(bday[dpindex[sortedage[i]]]< bday[dpindex[sortedage[i+1]]]){
				var tempkey = sortedage[i+1]
				sortedage[i+1] = sortedage[i]
				sortedage[i] = tempkey
				}
			}
		}
	
	}

//Print out "[Player]'s birthday is [month]/[day][year]" in order through the sorted age array to confirm they are sorted.
for i in sortedage{
	print(names[dpindex[sortedage[i]]] + "'s birthday is " + bmonth[dpindex[sortedage[i]]] + "/" + bday[dpindex[sortedage[i]]] + "/" + byear[dpindex[sortedage[i]]])
}

// 2 - Create a list of players sorted by country
//Bubble sort the players by country
for i = 0; i < sortedcountry.count - 1; i+=1{
	if(country[dpindex[sortedcountry[i]]] > country[dpindex[sortedcountry[i]]]){
		var tempkey = sortedcountry[i+1]
		sortedcountry[i+1] = sortedcountry[i]
		sortedcountry[i] = tempkey
		//Because more than 1 player can be from a country we need to move back 2 indices whenever we swap so to make sure it keeps like countries together.
		if(i != 0){
			i-= 2
		}
	}
}

//Print out "[Player] is from [Country]" to confirm that like countries are grouped together.
for i in sortecountry{
	print(names[dpindex[sortedcountry[i]]] + "is from" + country[dpindex[sortedcountry[i]]])
}

// 3 - Calculate the average age of the players
//Add together all ages from the age array and then divide by number of players
for i in age{
	avgage+= age[i]
}

avgage = avgage/ age.count
print("The Blackhawks average age is \(avgage) years old.")


// 4 - Calculate the average height of the players

//Add together all the feet and all the inches from their respective arrays
for i in heightf{
	avgfeet += heightf[i]
	avginches += heighi[i]
}

//Add the mod 12 of the inches divided by 12 to feet, since they are more than a foot.
avgfeet += (avginches - (avginches % 12))/12
//mod the avginches to account for the switch
avginches = avginches % 12
//Since feet might not be divisible by the number of players convert the mod of the feet by the players back to inches
avginches += (avgfeet % heightf.count) * 12
//Account for the switch in the feet
avgfeet = avgfeet - (avgfeet % heightf.count)
//Divide the feet by number of players (should be an even number)
avgfeet = avgfeet/(height.count)
//Divide inches by number of players (most likely not a round number)
avginches = avginches/(heightf.count)

print("The Blackhawks average height is \(avgfeet) feet and \(avginches) inches.")


 //5 - Determine the month in which most of the players birthday falls
 
 //Populate birthdaymonths by just checking the birth month array
 for i in bmonth{
	 birthdaymonths[bmonth[i]] += 1
 }
 
 //Determine the month with the most birthdays by comparing them and storing the highest month in a variable
 var monthmost = 0
 for i in birthdaymonths{
	 if(birthdaymonths[i] > birthdaymonths[monthmost]){
		 monthmost = i
	 }
 }
 
 //Based on the month with the highest birthdays print out the statement below with the correct month.
 print(The month with the most Blackhawks birthdays is:)
 switch(monthmost){
	 case 1: print("January")
	 case 2: print("February")
	 case 3: print("March")
	 case 4: print("April")
	 case 5: print("May")
	 case 6: print("June")
	 case 7: print("July")
	 case 8: print("August")
	 case 9: print("September")
	 case 10: print("October")
	 case 11: print("November")
	 case 12: print("December")
	 default: print("ERROR")
 }
 
 //Celebrate
 print("WE'RE DONE YAY")