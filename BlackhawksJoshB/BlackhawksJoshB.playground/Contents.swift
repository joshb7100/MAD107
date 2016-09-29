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
dpindex[39] = i;
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


//ACTUAL CODE FINALLY
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