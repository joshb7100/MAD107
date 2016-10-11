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

enum bunType{
    case regular
    case pretzel
    case sesame
}

enum burgerType{
    case beef
    case steak
    case chicken
    case turkey
    case veggie
}

enum condimentType{
    case ketchup
    case mayo
    case mustard
    case bbq
    case ranch
    case none
}

enum onionsType{
    case yes
    case no
    case extra
}

enum lettuceType{
    case yes
    case no
    case extra
}

enum tomatoType{
    case yes
    case no
    case extra
}

enum sideType{
    case fries
    case chips
    case neither
    case both
}

struct burgerOrder{
    var bun: bunType?
    var burger: burgerType?
    var condiment: condimentType?
    var onions: onionsType?
    var lettuce: lettuceType?
    var tomato: tomatoType?
    var side: sideType?
}
var myorder = burgerOrder()

//Input your bun type
print("What type of bun would you like? we have regular, pretzel or sesame.")
myorder.bun = bunType.sesame
print("Got it.")

//Input your burger type
print("Now what kind of burger would you like? There's beef, steak, chicken, turkey, or veggie")
myorder.burger = burgerType.chicken
print("Got it.")

//Input a condiment type or omit it if you don't want any
print("And your condiment? There's ketchup, mayo, mustard, bbq or ranch.")
myorder.condiment = condimentType.bbq
print("Got it.")

//Input a whether you want onions
print("Would you like onions?")
myorder.onions = onionsType.extra
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
myorder.side = sideType.both
print("Got it.")
print("")
print("Alright so your order is:")

if let yourburger = myorder.burger{
    print("A \(yourburger) burger ", terminator:"")
}
else{
    print("You forgot a burger type.")
    print("But it would've been ", terminator:"")
}

if let yourbun = myorder.bun{
    print("on a \(yourbun) bun", terminator:"")
}
if let yourcondiment = myorder.condiment{
    print(" with \(yourcondiment)", terminator:"")
}

if let youronions = myorder.onions{
    switch(youronions){
    case onionsType.yes: print(", onions", terminator:"")
    case onionsType.no: break;
    case onionsType.extra: print(", extra onions", terminator:"")
    }
}

if let yourlettuce = myorder.lettuce{
    switch(yourlettuce){
    case lettuceType.yes: print(",lettuce", terminator:"")
    case lettuceType.no: break;
    case lettuceType.extra: print(", extra lettuce", terminator:"")
    }
}

if let yourtomato = myorder.tomato{
    switch(yourtomato){
    case tomatoType.yes: print(",tomato", terminator:"")
    case tomatoType.no: break;
    case tomatoType.extra: print(", extra tomato", terminator:"")
    }
}

if let yourside = myorder.side{
    switch(yourside){
    case sideType.fries: print(", and with fries.", terminator:"")
    case sideType.chips: print(", and with chips.", terminator:"")
    case sideType.neither: print(".", terminator:"")
    case sideType.both: print(", and with both fries and chips.")
    }
}
 