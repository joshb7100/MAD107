/*Bill Splitter App
This app is for splitting a bill between multiple people and helping with tip calculation
as well as splitting it out amongst the group.
The first portion will be able to take in a restaurant bill total, give back a total with a specified
tip precentage added in and then from there you can either split it evenly or specify the percentages to dole out to each person.
The next function will be for splitting rent and will include things like cable, water, electric or w/e other utilities, maybe add in a way to vary the number of different factors.
Could also add in just a random function for paying someone back such as gas for a car trip etc.*/

/*
    _______________________________________

    |  Restaurant|   Rent   |  Other       |
    |  ____________________________________|
    |                                      |
    |                                      |
    |   Bill, pre-tax :  ___________       |
    |                                      |
    |   Bill, after-tax: ___________       |
    |                                      |
    |                                      |
    |    Tip %: ______                     |
    |                                      |
    |                                      |
    |    Number of People to Divide: ____  |
    |       Evenly? ___                    |
    |                                      |
    |                                      |
    |                                      |
    |                                      |
    |                                      |
    |                                      |
    |                                      |
    |                                      |
    |                                      |
    |                                      |
    |                                      |
    |                                      |
    |                                      |
     _______________________________________

*/
//An array to store multiple bills in order to switch between them
var currBillindex: Int = -1

//Enumeration used for error checking to make sure we use the correct bill type in functions.
enum billType{
    case restaurant
    case rent
    case tip
    case other
    case undefined
}

/***************************************************************************************************************************
 General class for a bill, typically just used for storing subclasses into an array as well as some other helper functions.
 **************************************************************************************************************************/
class bill{
    var type: billType
    var ftotal: Double
    var numsplit: Int
    var percent: [Double]
    var finsplit: [Double]
    var even: Int
    var arrayNum: Int
    func switchBill(){
        currBillindex = arrayNum
    }
    //These functions are used for converting the bill class in the array to the respective subclass.
    func restaurant() -> restBill{
        if(self.type == .restaurant){
            return self as! restBill}
        else{
            print("INVALID TYPECAST!!! Returning an empty restBill class to avoid error")
            return restBill()
        }
    }
    func rent() -> rentBill{
        if(self.type == .rent){
            return self as! rentBill
        }
        else{
            print("INVALID TYPECAST!!! Returning an empty rentBill class to avoid error")
            return rentBill()
        }
    }
    func tip() -> tipBill{
        if(self.type == .tip){
            return self as! tipBill
        }
        else{
            print("INVALID TYPECAST!!! Returning an empty tipBill class to avoid error")
            return tipBill()
        }
    }
        
    init(){
        self.type = .undefined
        self.ftotal = 0
        self.numsplit = 0
        self.percent = []
        self.finsplit = []
        self.even = 1
        self.arrayNum = billArray.count
        billArray.insert(self, atIndex: arrayNum)
        currBillindex = arrayNum
    }
}

/**********************************************************************************************
 Class for a tip calculator. Subclass of a bill. Much simpler than other classes since it doesn't
 bother with splitting between multiple people.
 *********************************************************************************************/
class tipBill: bill{
    var pretax: Double
    var posttax: Double
    var tip: Double
    override init(){
        self.pretax = 0
        self.posttax = 0
        self.tip = 0
        super.init()
        self.type = .tip
        self.ftotal = 0
    }
    //Function to easily set multiple variables in the class at once.
    func set(pretax:Double, posttax:Double,tip:Double){
        self.pretax = pretax
        self.posttax = posttax
        self.tip = tip
    }
}

/**********************************************************************************************
 Class for a restaurant bill, subclass of bill and is used to split a restaurant bill amongst
 multiple people as well as calculate a tip for you.
 *********************************************************************************************/
class restBill: bill{
    var pretax: Double
    var posttax: Double
    var tip: Double
    override init(){
        self.pretax = 0
        self.posttax = 0
        self.tip = 0
        super.init()
        self.type = .restaurant
        self.ftotal = 0
        self.numsplit = 0
        self.percent = []
        self.finsplit = []
        self.even = 1
    }
    //Function to easily set multiple variables in the class at once.
    func set(pretax:Double, posttax:Double,tip:Double,numsplit:Int,percent:[Double],even:Int){
        self.pretax = pretax
        self.posttax = posttax
        self.tip = tip
        self.numsplit = numsplit
        self.percent = percent
        self.even = even
    }
    func restaurantSplit(){
        if(self.type != .restaurant){
            print("Invalid bill type. Please make sure to pass in a Restaurant Bill")
            return
        }
        //Clear the final split array of any pregenerated outputs.
        self.finsplit = []
        //Calculate the tip based on the pretax total.
        let tipamount: Double = self.tip * self.pretax
        //Determine the final total based on tip + posttax total
        var finaltot = tipamount + self.posttax
        //Round final total to two decimal places
        finaltot = twodecimal(finaltot)
        //Calculate out the amount each individual pays either by splitting evenly or taking in the inputted percents
        if(self.even == 1){
            for _ in 1...self.numsplit{
                //Append each result that is rounded to two decimals
                self.finsplit.append(twodecimal(finaltot / Double(self.numsplit)))
            }
        }
        else{
            for i in 1...self.numsplit{
                let splitamt = twodecimal(finaltot * self.percent[i - 1])
                //print(splitamt)
                self.finsplit.append(splitamt)
            }
        }
        self.ftotal = finaltot
    }
    func output(){
        if(self.type != .restaurant){
            print("Invalid bill type. Please make sure to pass in a Restaurant Bill")
            return
        }
        print("Including a \(self.tip * 100)% tip, the final total is $\(ze(self.ftotal))")
        print("The split amounts accordingly are:")
        if(self.even == 1){
            print("Each of the \(self.numsplit) people pays an even split of $\(ze(self.finsplit[0]))")
        }
        else{
            for i in 1...self.numsplit{
                print("\(self.percent[i - 1] * 100)% will be $\(ze(self.finsplit[i - 1]))")
            }
        }
        print(" ")
    }
}

/**********************************************************************************************
    Class for a rent bill, subclass of a general bill. Used for splitting rent
 between multiple people.
 *********************************************************************************************/
class rentBill: bill{
    var rent: Double
    var cable: Double
    var electric: Double
    var water: Double
    var sanitation: Double
    var internet: Double
    var heat: Double
    var other: [Double]
    var othertot: Double
    override init(){
        self.rent = 0
        self.cable = 0
        self.electric = 0
        self.water = 0
        self.sanitation = 0
        self.internet = 0
        self.heat = 0
        self.other = []
        self.othertot = 0
        super.init()
        self.type = .rent
        self.ftotal = 0
        self.numsplit = 0
        self.percent = []
        self.finsplit = []
        self.even = 1
    }
    //Function to easily set multiple variables in the class at once.
    func set(rent:Double, cable:Double,electric:Double,water:Double,sanitation:Double,internet:Double,heat:Double,other:[Double],numsplit:Int,percent:[Double],even:Int){
        self.rent = rent
        self.cable = cable
        self.electric = electric
        self.water = water
        self.sanitation = sanitation
        self.internet = internet
        self.heat = heat
        self.other = []
        self.other = other
        self.numsplit = numsplit
        self.percent = []
        self.percent = percent
        self.even = even
    }
    func rentSplit(){
        if(self.type != .rent){
            print("Invalid bill type. Please make sure to pass in a Rent Bill")
            return
        }
        //Clear the final split array of any pregenerated outputs.
        self.finsplit = []
        //Calculate the total of any elements in the other array
        for i in 0...(self.other.count - 1){
            self.othertot += self.other[i]
        }
        
        
        //Calculate the final rent total from all of the utilities
        var finaltot: Double = 0
        finaltot += self.rent
        finaltot += self.cable
        finaltot += self.electric
        finaltot += self.water
        finaltot += self.sanitation
        finaltot += self.internet
        finaltot += self.heat
        //Round final total to two decimal places
        finaltot = twodecimal(finaltot)
        //Calculate out the amount each individual pays either by splitting evenly or taking in the inputted percents
        if(self.even == 1){
            for _ in 1...self.numsplit{
                //Append each result that is rounded to two decimals
                self.finsplit.append(twodecimal(finaltot / Double(self.numsplit)))
            }
        }
        else{
            for i in 1...self.numsplit{
                let splitamt = twodecimal(finaltot * self.percent[i - 1])
                //print(splitamt)
                self.finsplit.append(splitamt)
            }
        }
        self.ftotal = finaltot
    }
    func output(){
        if(self.type != .rent){
            print("Invalid bill type. Please make sure to pass in a Rent Bill")
            return
        }
        print("The costs are as follows:")
        print("Initial rent: $\(ze(self.rent))")
        print("Cable: $\(ze(self.cable))")
        print("Electric: $\(ze(self.electric))")
        print("Water: $\(ze(self.water))")
        print("Sanitation: $\(ze(self.sanitation))")
        print("Internet: $\(ze(self.internet))")
        print("Heat: $\(ze(self.heat))")
        print("Other (total): $\(ze(self.othertot))")
        print(" ")
        print("The total cost is $\(ze(self.ftotal))")
        print("The split amounts accordingly are:")
        if(self.even == 1){
            print("Each of the \(self.numsplit) people pays an even split of $\(ze(self.finsplit[0]))")
        }
        else{
            for i in 1...self.numsplit{
                print("\(self.percent[i - 1] * 100)% will be $\(ze(self.finsplit[i - 1]))")
            }
        }
    }
}

var billArray = [bill]()

func twodecimal (number:Double) -> Double{
    //multiply by 100 se we can round to two decimal places
    var temp = number * 100
    //based on whats in the decimal places round up or down
    if((temp % 1) >= 0.5){
        temp = temp - (temp % 1) + 1
    }
    else{
        temp = temp - (temp % 1)
    }
    //Divide by 100 again to return the number back
    temp = temp / 100
    return temp
}

//Function to zero extend any number to two decimal points for string output.
func ze (number:Double) -> String{
    var s:String
    s = String(number)
    if(((number * 10) % 1) == 0){
        s+="0"
        
    }
    return s
}

//Define our inputs to be used for Bill #1
var currBill: bill = restBill()
print("Create Bill #1, fill in inputs and generate output:")
billArray[currBillindex].restaurant().set(45.31, posttax:48.52, tip:0.20, numsplit:5, percent:[0.40,0.2,0.1,0.15,0.15], even:0)
//Run our restaurantSplit function with our defined inputs
billArray[currBillindex].restaurant().restaurantSplit()
//Call our output function to print out the results.
billArray[currBillindex].restaurant().output()

currBill = restBill()

//Bill #2 inputs
print("Create Bill #2, switch to it, fill in inputs and output results:")
billArray[currBillindex].restaurant().set(158.32, posttax:183.21, tip:0.15, numsplit:8, percent:[0.1,0.2,0.1,0.05,0.05,0.1,0.1,0.3], even:1)
billArray[currBillindex].restaurant().restaurantSplit()
billArray[currBillindex].restaurant().output()

//Switch back to bill 1
print("Switch back to Bill #1, change input and regenerate outputs:")
billArray[0].switchBill()
billArray[currBillindex].restaurant().tip = 0.1
billArray[currBillindex].restaurant().restaurantSplit()
billArray[currBillindex].restaurant().output()

//Create a new Rent Bill
currBill = rentBill()
billArray[currBillindex].rent().set(2200, cable:53.21, electric:23.75, water:68.9, sanitation:10, internet:24, heat:38.81, other:[51.2, 12.4, 0.41, 5.99], numsplit:8, percent:[0.1,0.2,0.1,0.05,0.05,0.1,0.1,0.3], even:0)
billArray[currBillindex].rent().rentSplit()
billArray[currBillindex].rent().output()




