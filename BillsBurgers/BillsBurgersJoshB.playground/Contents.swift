/* Bill's WeBurgers Burger builder!
We ask the user a number of questions about what ingredients they want for their burger such as:
 Bun type?
 Burger type?
 Condiment Type?
 Onions?
 Lettuce?
 Tomato?
 Fries/Chips?
 
 After asking all these questions we repeat their order back to them so we know we got it right. */

//bun enumeration
enum bunType: Int{
    case regular = 0
    case pretzel
    case sesame
}

//burger enumeration
enum burgerType: Int{
    case beef = 3
    case steak
    case chicken
    case turkey
    case veggie
}

//condiment enumeration
enum condimentType: Int{
    case ketchup = 8
    case mayo
    case mustard
    case bbq
    case ranch
}

//onion enumeration
enum onionsType: Int{
    case yes = 13
    case no
    case extra
}

//lettuce enumeration
enum lettuceType: Int{
    case yes = 16
    case no
    case extra
}

//tomato enumeration
enum tomatoType: Int{
    case yes = 19
    case no
    case extra
}

//side enumeration
enum sideType: Int{
    case fries = 22
    case chips
    case neither
    case both
}

//drink enumeration
enum drinkType: Int{
    case soda = 26
    case water
    case rootbeerfloat
    case milkshake
}

//struct for our burger order
struct burgerOrder{
    var bun: bunType?
    var burger: burgerType?
    var condiment: condimentType?
    var onions: onionsType?
    var lettuce: lettuceType?
    var tomato: tomatoType?
    var side: sideType?
    var drink: drinkType?
    var cost: Double = 0
}

//declare our order
var myorder = burgerOrder()
//The price array to store the prices for all options. The index corresponds to the raw value from the enumerations
var pricearray: [Double] = [0,0.8,0.5, //buns
                            3.5,5,4,4.5,2.5, //burgers
                            0,0.2,0,0.15,0.18, //condiments
                            0.25,0,0.45, //onions
                            0.08,0,0.14, //lettuce
                            0.2,0,0.33, //tomato
                            1.65,1.45,0,2.75, //side
                            1.25,0.25,2.2,2.5] //drink

//Input your bun type
print("What type of bun would you like? We have regular, pretzel or sesame.")
myorder.bun = bunType.regular
print("Got it.")

//Input your burger type
print("Now what kind of burger would you like? There's beef, steak, chicken, turkey, or veggie")
myorder.burger = burgerType.beef
print("Got it.")

//Input a condiment type or omit it if you don't want any
print("And your condiment? There's ketchup, mayo, mustard, bbq or ranch.")
//myorder.condiment = condimentType.ranch
print("Got it.")

//Input a whether you want onions
print("Would you like onions?")
myorder.onions = onionsType.no
print("Got it.")

//Input if you want lettuce
print("Would you like lettuce?")
myorder.lettuce = lettuceType.no
print("Got it.")

//Input if you want tomato
print("Would you like tomato?")
myorder.tomato = tomatoType.no
print("Got it.")

//Input what side you want
print("What would you like for your side? There's fries or chips or you can get both.")
myorder.side = sideType.neither
print("Got it.")

//Input a drink
print("What would you like for a drink? There's soda, water, rootbeer floats, and milkshakes.")
//myorder.drink = drinkType.milkshake
print("Got it.")

print("")
print("Alright so your order is:")

//Goes through all ingredients, if it was specified it will add the price and print out to our response what they ordered.
if let yourburger = myorder.burger{
    myorder.cost += pricearray[yourburger.rawValue]
    print("A \(yourburger) burger ", terminator:"")
}
else{
    print("You forgot a burger type.")
    print("But it would've been ", terminator:"")
}

if let yourbun = myorder.bun{
    myorder.cost += pricearray[yourbun.rawValue]
    print("on a \(yourbun) bun", terminator:"")
}
if let yourcondiment = myorder.condiment{
    myorder.cost += pricearray[yourcondiment.rawValue]
    print(" with \(yourcondiment)", terminator:"")
}

if let youronions = myorder.onions{
    myorder.cost += pricearray[youronions.rawValue]
    switch(youronions){
    case .yes: print(", onions", terminator:"")
    case .no: break;
    case .extra: print(", extra onions", terminator:"")
    }
}

if let yourlettuce = myorder.lettuce{
    myorder.cost += pricearray[yourlettuce.rawValue]
    switch(yourlettuce){
    case .yes: print(", lettuce", terminator:"")
    case .no: break;
    case .extra: print(", extra lettuce", terminator:"")
    }
}

if let yourtomato = myorder.tomato{
    myorder.cost += pricearray[yourtomato.rawValue]
    switch(yourtomato){
    case .yes: print(", tomato", terminator:"")
    case .no: break;
    case .extra: print(", extra tomato", terminator:"")
    }
}

if let yourside = myorder.side{
    myorder.cost += pricearray[yourside.rawValue]
    switch(yourside){
    case .fries: print(", and with fries.", terminator:"")
    case .chips: print(", and with chips.", terminator:"")
    case .neither: print(".", terminator:"")
    case .both: print(", and with both fries and chips", terminator: "")
    }
}

if let yourdrink = myorder.drink{
    myorder.cost += pricearray[yourdrink.rawValue]
    print(" and a \(yourdrink).")
}

print("Your total will be $\(myorder.cost).")
 
