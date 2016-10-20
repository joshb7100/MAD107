/*Build My Prius App
 Select from different options for a Prius
 Model
 Color
 Interior
 Cross Bars
 Paint Protector Film
 Weather Floor Liner
 Security System
 */

import Darwin

enum Model: Int{
    case PriusTwo = 0
    case PriusTwoEco
    case PriusThree
    case PriusThreeTouring
    case PriusFour
    case PriusFourTouring
}

enum Color: Int {
    case BlizzardPearl = 0
    case BlueCrushMetallic
    case ClassicSilverMetallic
    case HypersonicRed
    case MagneticGrayMetallic
    case MidnightBlackMetallic
    case SeaGlassPearl
}
enum Interior: Int {
    case Black = 0
    case Moonstone
    case Leather
}
enum Crossbar: Int{
    case yes = 0
    case no
}

enum PaintProtector: Int{
    case yes = 0
    case no
}


enum WeatherLiner: Int{
    case yes = 0
    case no
}

enum SecuritySystem: Int{
    case yes = 0
    case no
}

class Prius{
    var model: Model = .PriusTwo
    var color: Color = .BlizzardPearl
    var interior: Interior = .Black
    var crossbar: Crossbar = .no
    var paintprotector: PaintProtector = .no
    var liner: WeatherLiner = .no
    var security: SecuritySystem = .no
}

var myPrius: Prius = Prius()

//Randomize our Prius!
myPrius.model = Model(rawValue: Int(arc4random_uniform(6)))!
myPrius.color = Color(rawValue: Int(arc4random_uniform(7)))!
myPrius.interior = Interior(rawValue: Int(arc4random_uniform(3)))!
myPrius.crossbar = Crossbar(rawValue: Int(arc4random_uniform(2)))!
myPrius.paintprotector = PaintProtector(rawValue: Int(arc4random_uniform(2)))!
myPrius.liner = WeatherLiner(rawValue: Int(arc4random_uniform(2)))!
myPrius.security = SecuritySystem(rawValue: Int(arc4random_uniform(2)))!


print("Our Prius is a \(myPrius.color) \(myPrius.model) with \(myPrius.interior) interior", terminator:"")

switch(myPrius.crossbar){
case .yes: print(", a crossbar", terminator:"")
case .no: break;
}

switch(myPrius.paintprotector){
case .yes: print(", a paint protector film", terminator:"")
case .no: break;
}

switch(myPrius.liner){
case .yes: print(", a weather floor liner", terminator:"")
case .no: break;
}

switch(myPrius.security){
case .yes: print(" and a security system.")
case .no: break;
}