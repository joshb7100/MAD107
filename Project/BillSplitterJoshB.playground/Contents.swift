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
    func other() -> otherBill{
        if(self.type == .other){
            return self as! otherBill
        }
        else{
            print("INVALID TYPECAST!!! Returning an empty otherBill class to avoid error")
            return otherBill()
        }
    }
    
    //Initialization function for a bill, automatically adds the bill to the bill Array when created.
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
    //Default Initialization values for a tip calculation.
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
    //Errorchecking function automatically called when attempting to output.
    func errcheck() -> Int{
        var errval: Int = 0
        if(self.type != .tip){
            print("Invalid bill type. Please make sure to pass in a Tip Calculation")
            return -1
        }
        if(self.pretax < 0){
            print("Pretax input amount is negative.")
            errval = -1
        }
        if(self.posttax < 0){
            print("Posttax input amount is negative.")
            errval = -1
        }
        if(self.tip < 0){
            print("Tip percent is negative.")
            errval = -1
        }
        if(self.posttax < self.pretax){
            print("Posttax amount is less than pretax amount.")
            errval = -1
        }
        return errval
    }
    //Function to calculate the total, called by output.
    func tipCalc() -> Int{
        let errnum: Int = self.errcheck()
        if(errnum < 0){
            return errnum
        }
        //Calculate the tip based on the pretax total.
        let tipamount: Double = self.tip * self.pretax
        //Determine the final total based on tip + posttax total
        var finaltot = tipamount + self.posttax
        //Round final total to two decimal places
        finaltot = twodecimal(finaltot)
        self.ftotal = finaltot
        return errnum
    }
    //Output function to run the program and print results to the screen.
    func output(){
        let errnum: Int = tipCalc()
        if(errnum < 0){
            print("Cannot continue with Output until specified errors are fixed")
            return
        }
        print("Including a \(self.tip * 100)% tip, the final total is $\(ze(self.ftotal)).")
        print(" ")
    }
}

/**********************************************************************************************
 Class for any other bill. Subclass of a bill. It is used to split between anyother type of desired payment.
 *********************************************************************************************/
class otherBill: bill{
    var amounts: [Double]
    var paidby: String
    var names: [String]
    //Default Initialization values for an other bill.
    override init(){
        self.amounts = []
        self.paidby = "<unnamed>"
        self.names = []
        super.init()
        self.type = .other
        self.ftotal = 0
        self.numsplit = 0
        self.percent = []
        self.finsplit = []
        self.even = 1
    }
    //Function to easily set multiple variables in the class at once.
    func set(amts: [Double], numsplit: Int, percent: [Double], even: Int){
        self.amounts = amts
        self.numsplit = numsplit
        self.percent = percent
        self.even = even
    }
    func set(amts: [Double], numsplit: Int, percent: [Double], even: Int, names:[String], paidby:String){
        self.amounts = amts
        self.numsplit = numsplit
        self.percent = percent
        self.even = even
        self.names = names
        self.paidby = paidby
    }
    //Errorchecking function automatically called when attempting to output.
    func errcheck() -> Int{
        var errval: Int = 0
        if(self.type != .other){
            print("Invalid bill type. Please make sure to pass in an OtherBill")
            return -1
        }
        if(self.amounts == []){
            print("No values in amounts, please input values.")
            return -1
        }
        for i in 0...(amounts.count - 1){
            if(amounts[i] < 0){
                print("Value in index \(i) of amounts is negative.")
                errval = -1
            }
        }
        if(numsplit <= 0){
            print("Cannot split between less than one person")
            errval = -1
        }
        if((self.even < 0) || (self.even > 1)){
            print("Invalid input for Even value, use 0 or 1.")
            errval = -1
        }
        if((self.even == 0) && (self.names.count != numsplit)){
            if((names.count) < numsplit){
                for _ in (names.count)...(numsplit - 1){
                    names.append("<unnamed>")
                }
            }
            else{
                print("There are extra names in the names array.")
            }
        }
        if((self.even == 0) && (percent.count != numsplit)){
            print("Numsplit doesn't equal the number of values in percent.")
            errval = -1
        }
        if(self.even == 0){
        var temp: Double = 0
            for i in 0...(percent.count - 1){
                if(percent[i] < 0){
                    print("Value in index \(i) of percent is negative.")
                }
                temp += percent[i] 
            }
            if(temp < 1){
                print("The values in percent only add up to \(temp*100)%. Please fix the values.")
                errval = -1
            }
            if(temp > 1){
                print("The values in percent add up to \(temp*100)%. Be aware that this is greater than 100%")
            }
        }
        return errval
    }
    //Function to calculate everything, called by output.
    func otherSplit() -> Int{
        let errnum: Int = self.errcheck()
        if(errnum < 0){
            return errnum
        }
        //Clear the final split array of any pregenerated outputs.
        self.finsplit = []
        var finaltot: Double = 0
        for i in 0...(self.amounts.count - 1){
            finaltot += self.amounts[i]
            }
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
        return errnum
    }
    //Output function to run the program and print results to the screen.
    func output(){
        let errnum: Int = otherSplit()
        if(errnum < 0){
            print("Cannot continue with Output until specified errors are fixed")
            return
        }
        print("The total of the passed in amounts was $\(ze(self.ftotal)).")
        print("The bill was paid by: \(self.paidby).")
        print("The split amounts accordingly are:")
        if(self.even == 1){
            print("Each of the \(self.numsplit) people pays \(self.paidby) an even split of $\(ze(self.finsplit[0]))")
        }
        else{
            for i in 1...self.numsplit{
                print("\(self.names[i - 1]) is paying \(self.percent[i - 1] * 100)% which will be $\(ze(self.finsplit[i - 1]))")
            }
        }
        print(" ")
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
    var paidby: String
    var names: [String]
    //Default Initialization values for a restaurant bill.
    override init(){
        self.pretax = 0
        self.posttax = 0
        self.tip = 0
        self.paidby = "<unnamed>"
        self.names = []
        super.init()
        self.type = .restaurant
        self.ftotal = 0
        self.numsplit = 0
        self.percent = []
        self.finsplit = []
        self.even = 1
    }
    //Function to easily set multiple variables in the class at once.
    func set(pretax:Double, posttax:Double,tip:Double,numsplit:Int,percent:[Double],even:Int, names:[String], paidby:String){
        self.pretax = pretax
        self.posttax = posttax
        self.tip = tip
        self.numsplit = numsplit
        self.percent = percent
        self.even = even
        self.names = names
        self.paidby = paidby
    }
    func set(pretax:Double, posttax:Double,tip:Double,numsplit:Int,percent:[Double],even:Int){
        self.pretax = pretax
        self.posttax = posttax
        self.tip = tip
        self.numsplit = numsplit
        self.percent = percent
        self.even = even
    }
    //Errorchecking function automatically called when attempting to output.
    func errcheck() -> Int{
        var errval: Int = 0
        if(self.type != .restaurant){
            print("Invalid bill type. Please make sure to pass in a RestaurantBill")
            return -1
        }
        if(self.pretax < 0){
            print("Pretax input amount is negative.")
            errval = -1
        }
        if(self.posttax < 0){
            print("Posttax input amount is negative.")
            errval = -1
        }
        if(self.tip < 0){
            print("Tip percent is negative.")
            errval = -1
        }
        if(self.posttax < self.pretax){
            print("Posttax amount is less than pretax amount.")
            errval = -1
        }
        if(numsplit <= 0){
            print("Cannot split between less than one person")
            errval = -1
        }
        if((self.even < 0) || (self.even > 1)){
            print("Invalid input for Even value, use 0 or 1.")
            errval = -1
        }
        if((self.even == 0) && (self.names.count != numsplit)){
            if((names.count) < numsplit){
                for _ in (names.count)...(numsplit - 1){
                    names.append("<unnamed>")
                }
            }
            else{
                print("There are extra names in the names array.")
            }
        }
        if((self.even == 0) && (percent.count != numsplit)){
            print("Numsplit doesn't equal the number of values in percent.")
            errval = -1
        }
        if(self.even == 0){
        var temp: Double = 0
            for i in 0...(percent.count - 1){
                if(percent[i] < 0){
                    print("Value in index \(i) of percent is negative.")
                }
               temp += percent[i] 
            }
            if(temp < 1){
                print("The values in percent only add up to \(temp*100)%. Please fix the values.")
                errval = -1
            }
            if(temp > 1){
                print("The values in percent add up to \(temp*100)%. Be aware that this is greater than 100%")
            }
        }
        return errval
    }
    //Function to calculate everything, called by output.
    func restaurantSplit() -> Int{
        let errnum: Int = self.errcheck()
        if(errnum < 0){
            return errnum
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
        return errnum
    }
    //Output function to run the program and print results to the screen.
    func output(){
        let errnum: Int = restaurantSplit()
        if(errnum < 0){
            print("Cannot continue with Output until specified errors are fixed")
            return
        }
        print("Including a \(self.tip * 100)% tip, the final total is $\(ze(self.ftotal)).")
        print("The bill was paid by: \(self.paidby).")
        print("The split amounts accordingly are:")
        if(self.even == 1){
            print("Each of the \(self.numsplit) people pays \(self.paidby) an even split of $\(ze(self.finsplit[0]))")
        }
        else{
            for i in 1...self.numsplit{
                print("\(self.names[i - 1]) is paying \(self.percent[i - 1] * 100)% which will be $\(ze(self.finsplit[i - 1]))")
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
    var paidby: String
    var names: [String]
    //Default Initialization values for a rent bill.
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
        self.paidby = "<unnamed>"
        self.names = []
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
    func set(rent:Double, cable:Double,electric:Double,water:Double,sanitation:Double,internet:Double,heat:Double,other:[Double],numsplit:Int,percent:[Double],even:Int,names:[String],paidby:String){
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
        self.names = names
        self.paidby = paidby
    }
    //Errorchecking function automatically called when attempting to output.
    func errcheck() -> Int{
        var errval: Int = 0
        if(self.type != .rent){
            print("Invalid bill type. Please make sure to pass in a rentBill")
            return -1
        }
        if(rent < 0){
            print("Rent amount is negative.")
            errval = -1
        }
        if(cable < 0){
            print("Cable amount is negative.")
            errval = -1
        }
        if(electric < 0){
            print("Electric amount is negative.")
            errval = -1
        }
        if(water < 0){
            print("Water amount is negative.")
            errval = -1
        }
        if(sanitation < 0){
            print("Sanitation amount is negative.")
            errval = -1
        }
        if(internet < 0){
            print("Internet amount is negative.")
            errval = -1
        }
        if(heat < 0){
            print("Heat amount is negative.")
            errval = -1
        }
        for i in 0...(other.count - 1){
            if(other[i] < 0){
                print("Value in index \(i) of other is negative.")
                errval = -1
            }
        }
        if(numsplit <= 0){
            print("Cannot split between less than one person.")
            errval = -1
        }
        if((self.even < 0) || (self.even > 1)){
            print("Invalid input for Even value, use 0 or 1.")
            errval = -1
        }
        if((self.even == 0) && (self.names.count != numsplit)){
            if((names.count) < numsplit){
                for _ in (names.count)...(numsplit - 1){
                    names.append("<unnamed>")
                }
            }
            else{
                print("There are extra names in the names array.")
            }
        }
        if((self.even == 0) && (percent.count != numsplit)){
            print("Numsplit doesn't equal the number of values in percent.")
            errval = -1
        }
        if(self.even == 0){
        var temp: Double = 0
            for i in 0...(percent.count - 1){
                if(percent[i] < 0){
                    print("Value in index \(i) of percent is negative.")
                }
               temp += percent[i] 
            }
            if(temp < 1){
                print("The values in percent only add up to \(temp*100)%. Please fix the values.")
                errval = -1
            }
            if(temp > 1){
                print("The values in percent add up to \(temp*100)%. Be aware that this is greater than 100%")
            }
        }
        return errval
    }
    //Function to calculate everything, called by output.
    func rentSplit() -> Int{
        let errnum: Int = self.errcheck()
        if(errnum < 0){
            return errnum
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
        return errnum
    }
    //Output function to run the program and print results to the screen.
    func output(){
        let errnum: Int = rentSplit()
        if(errnum < 0){
            print("Cannot continue with Output until specified errors are fixed")
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
        print("The total cost is $\(ze(self.ftotal)).")
        print("The bill was paid by \(self.paidby).")
        print("The split amounts accordingly are:")
        if(self.even == 1){
            print("Each of the \(self.numsplit) people pays \(self.paidby) an even split of $\(ze(self.finsplit[0]))")
        }
        else{
            for i in 1...self.numsplit{
                print("\(self.names[i - 1]) is paying \(self.percent[i - 1] * 100)% which will be $\(ze(self.finsplit[i - 1]))")
            }
        }
        print(" ")
    }
}

//Values used for switching between previously created bills.
var billArray = [bill]()
var currBill: bill


/*********************************Testing Ground!***********************************************/
/* Below you can see the code for each bill type. Inputting names and paidby are optional in the set function.
 If you exclude them, all names will be substituted with <unnamed>. I recommend just copying the section you want to try and pasting it at the bottom, then switching the inputs.
 
 //Restaurant Bill:
 currBill = restBill()
 billArray[currBillindex].restaurant().set(/*pretax:*/158.32, posttax:183.21, tip:0.15, numsplit:8, percent:[0.1,0.2,0.1,0.05,0.05,0.1,0.1,0.3], even:0,names:["Abby","Brian","Carl","Donna","Edward","Frank","Gale","Helga"], paidby:"Helga")
 billArray[currBillindex].restaurant().output()
 
 //Rent Bill:
 currBill = rentBill()
 billArray[currBillindex].rent().set(/*rent:*/2200, cable:53.21, electric:23.75, water:68.9, sanitation:10, internet:24, heat:38.81, other:[51.2, 12.4, 0.41, 5.99], numsplit:8, percent:[0.1,0.2,0.1,0.05,0.05,0.1,0.1,0.3], even:0, names:["Abby","Brian","Carl","Donna","Edward","Frank","Gale","Helga"], paidby:"Helga")
 billArray[currBillindex].rent().output()
 
 //Other Bill/Payment:
 currBill = otherBill()
 billArray[currBillindex].other().set(/*amounts:*/[51.2, 12.4, 0.41, 5.99], numsplit:5, percent:[0.40,0.2,0.1,0.15,0.15], even:0, names:["Abby","Brian","Carl","Donna","Edward"], paidby:"Brian")
 billArray[currBillindex].other().output()
 
 //Tip Calculator:
 currBill = tipBill()
 billArray[currBillindex].tip().set(/*pretax:*/25.30, posttax:29.12, tip:0.2)
 billArray[currBillindex].tip().output()
 
 
 If you want to switch to a previously started bill use this, but replace <index> with the bill number you want to switch to. The first bill you input is at index 0:
 billArray[<index>].switchBill()

 
 */

// Start Test:
currBill = tipBill()
billArray[currBillindex].tip().set(/*pretax:*/25.30, posttax:29.12, tip:0.2)
billArray[currBillindex].tip().output()



