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


var billArray = [bill]()
billArray

enum billType{
    case restaurant
    case rent
    case tip
    case other
    case undefined
}

class bill{
    var type: billType = .undefined
    var final: Double = 0
    var numsplit: Int = 0
    var percent: [Double] = []
    var finsplit: [Double] = []
    var even: Int = 1
    var arrayNum = -1
    func switchBill(){
        billArray[currBill.arrayNum] = currBill
        currBill = billArray[self.arrayNum]
    }
    
}

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
        self.final = 0
        self.numsplit = 0
        self.percent = []
        self.finsplit = []
        self.even = 1
        self.arrayNum = billArray.count
        print(arrayNum)
        billArray.insert(self, atIndex: arrayNum)
    }
}



var currBill: bill = restBill()

currBill = restBill()


//Set up any necessary variables
var pretaxtotal: Double
var posttaxtotal: Double
var tippercent: Double
var finaltotal: Double
var numsplit: Int
var splitpercent: [Double] = []
var finalsplit: [Double] = []
var spliteven: Int


//Define our inputs to be used.

pretaxtotal = 45.31
posttaxtotal = 48.52
tippercent = 0.20
numsplit = 5
spliteven = 1
splitpercent += [0.40,0.2,0.1,0.15,0.15]

func restaurantSplit (pretax:Double, posttax:Double, tip:Double, split:Int, even: Int) -> Double{
    //Calculate the tip based on the pretax total.
    let tipamount: Double = tip * pretax
    //Determine the final total based on tip + posttax total
    var finaltot = tipamount + posttax
    //Round final total to two decimal places
    finaltot = twodecimal(finaltot)
    //Calculate out the amount each individual pays either by splitting evenly or taking in the inputted percents
    if(even == 1){
        for _ in 1...split{
        //Append each result that is rounded to two decimals
            finalsplit.append(twodecimal(finaltot / Double(split)))
        }
    }
    else{
        for i in 1...split{
            let splitamt = twodecimal(finaltot * splitpercent[i - 1])
            //print(splitamt)
            finalsplit.append(splitamt)
        }
    }
    
    return finaltot
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

//Output function to help with printing out the returns from the bill splitting.
func output (splitamts: [Double], total: Double){
    print("Including a \(tippercent * 100)% tip, the final total is $\(total)")
    print("The split amounts accordingly are:")
    if(spliteven == 1){
        print("Each person pays an even split of $\(splitamts[0])")
    }
    else{
        for i in 1...numsplit{
         print("\(splitpercent[i - 1] * 100)% will be $\(splitamts[i - 1])")
        }
    }
}

//Run our restaurantSplit function with our defined inputs
finaltotal = restaurantSplit(pretaxtotal,posttax: posttaxtotal,tip: tippercent,split: numsplit, even: spliteven)
//Call our output function to print out the results.
output(finalsplit, total: finaltotal)


