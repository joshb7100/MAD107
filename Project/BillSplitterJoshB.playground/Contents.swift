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

enum billType{
    case restaurant
    case rent
    case tip
    case other
    case undefined
}

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
    init(){
        self.type = .undefined
        self.ftotal = 0
        self.numsplit = 0
        self.percent = []
        self.finsplit = []
        self.even = 1
        self.arrayNum = billArray.count
        billArray.insert(self, atIndex: arrayNum)
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
        self.ftotal = 0
        self.numsplit = 0
        self.percent = []
        self.finsplit = []
        self.even = 1
    }
}

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
}



var billArray = [bill]()

var currBill: bill = restBill()
currBill.switchBill()


//Set up any necessary variables
/*
var pretaxtotal: Double
var posttaxtotal: Double
var tippercent: Double
var finaltotal: Double
var numsplit: Int
var splitpercent: [Double] = []
var finalsplit: [Double] = []
var spliteven: Int
*/


//Define our inputs to be used for Bill #1
print("Create Bill #1, fill in inputs and generate output:")
billArray[currBillindex].restaurant().pretax = 45.31
billArray[currBillindex].restaurant().posttax = 48.52
billArray[currBillindex].restaurant().tip = 0.20
billArray[currBillindex].numsplit = 5
billArray[currBillindex].even = 0
billArray[currBillindex].percent += [0.40,0.2,0.1,0.15,0.15]

func restaurantSplit (billIndex: Int) -> Double{
    if(billArray[billIndex].type != .restaurant){
        print("Invalid bill type. Please make sure to pass in a Restaurant Bill")
        return 0
    }
    //Clear the final split array of any pregenerated outputs.
    billArray[billIndex].finsplit = []
    //Calculate the tip based on the pretax total.
    let tipamount: Double = billArray[billIndex].restaurant().tip * billArray[billIndex].restaurant().pretax
    //Determine the final total based on tip + posttax total
    var finaltot = tipamount + billArray[billIndex].restaurant().posttax
    //Round final total to two decimal places
    finaltot = twodecimal(finaltot)
    //Calculate out the amount each individual pays either by splitting evenly or taking in the inputted percents
    if(billArray[billIndex].even == 1){
        for _ in 1...billArray[billIndex].numsplit{
        //Append each result that is rounded to two decimals
            billArray[billIndex].finsplit.append(twodecimal(finaltot / Double(billArray[billIndex].numsplit)))
        }
    }
    else{
        for i in 1...billArray[billIndex].numsplit{
            let splitamt = twodecimal(finaltot * billArray[billIndex].percent[i - 1])
            //print(splitamt)
            billArray[billIndex].finsplit.append(splitamt)
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

//Output function to help with printing out the returns from the restaurant bill splitting.
func restOutput (billIndex: Int){
    if(billArray[billIndex].type != .restaurant){
        print("Invalid bill type. Please make sure to pass in a Restaurant Bill")
        return
    }
    print("Including a \(billArray[billIndex].restaurant().tip * 100)% tip, the final total is $\(billArray[billIndex].ftotal)")
    print("The split amounts accordingly are:")
    if(billArray[billIndex].even == 1){
        print("Each of the \(billArray[billIndex].numsplit) people pays an even split of $\(billArray[billIndex].finsplit[0])")
    }
    else{
        for i in 1...billArray[billIndex].numsplit{
         print("\(billArray[billIndex].percent[i - 1] * 100)% will be $\(billArray[billIndex].finsplit[i - 1])")
        }
    }
    print(" ")
}

func rentSplit (billIndex: Int) -> Double{
    if(billArray[billIndex].type != .rent){
        print("Invalid bill type. Please make sure to pass in a Rent Bill")
        return 0
    }
    //Clear the final split array of any pregenerated outputs.
    billArray[billIndex].finsplit = []
    //Calculate the total of any elements in the other array
    for i in 0...(billArray[billIndex].rent().other.count - 1){
        billArray[billIndex].rent().othertot += billArray[billIndex].rent().other[i]
    }
    
    
    //Calculate the final rent total from all of the utilities
    var finaltot: Double = 0
    finaltot += billArray[billIndex].rent().rent
    finaltot += billArray[billIndex].rent().cable
    finaltot += billArray[billIndex].rent().electric
    finaltot += billArray[billIndex].rent().water
    finaltot += billArray[billIndex].rent().sanitation
    finaltot += billArray[billIndex].rent().internet
    finaltot += billArray[billIndex].rent().heat
    //Round final total to two decimal places
    finaltot = twodecimal(finaltot)
    //Calculate out the amount each individual pays either by splitting evenly or taking in the inputted percents
    if(billArray[billIndex].even == 1){
        for _ in 1...billArray[billIndex].numsplit{
            //Append each result that is rounded to two decimals
            billArray[billIndex].finsplit.append(twodecimal(finaltot / Double(billArray[billIndex].numsplit)))
        }
    }
    else{
        for i in 1...billArray[billIndex].numsplit{
            let splitamt = twodecimal(finaltot * billArray[billIndex].percent[i - 1])
            //print(splitamt)
            billArray[billIndex].finsplit.append(splitamt)
        }
    }
    return finaltot
}

//Output function to help with printing out the returns from the rent bill splitting.
func rentOutput (billIndex: Int){
    if(billArray[billIndex].type != .rent){
        print("Invalid bill type. Please make sure to pass in a Rent Bill")
        return
    }
    print("The costs are as follows:")
    print("Initial rent: \(billArray[billIndex].rent().rent)")
    print("Cable: \(billArray[billIndex].rent().cable)")
    print("Electric: \(billArray[billIndex].rent().electric)")
    print("Water: \(billArray[billIndex].rent().water)")
    print("Sanitation: \(billArray[billIndex].rent().sanitation)")
    print("Internet: \(billArray[billIndex].rent().internet)")
    print("Heat: \(billArray[billIndex].rent().heat)")
    print("Other (total): \(billArray[billIndex].rent().othertot)")
    print(" ")
    print("The total cost is \(billArray[billIndex].ftotal)")
    print("The split amounts accordingly are:")
    if(billArray[billIndex].even == 1){
        print("Each of the \(billArray[billIndex].numsplit) people pays an even split of $\(billArray[billIndex].finsplit[0])")
    }
    else{
        for i in 1...billArray[billIndex].numsplit{
            print("\(billArray[billIndex].percent[i - 1] * 100)% will be $\(billArray[billIndex].finsplit[i - 1])")
        }
    }
}

//Run our restaurantSplit function with our defined inputs
billArray[currBillindex].ftotal = restaurantSplit(currBillindex)
//Call our output function to print out the results.
restOutput(currBillindex)

currBill = restBill()
currBill.switchBill()

//Bill #2 inputs
print("Create Bill #2, switch to it, fill in inputs and output results:")
billArray[currBillindex].restaurant().pretax = 158.32
billArray[currBillindex].restaurant().posttax = 183.21
billArray[currBillindex].restaurant().tip = 0.15
billArray[currBillindex].numsplit = 8
billArray[currBillindex].even = 0
billArray[currBillindex].percent += [0.1,0.2,0.1,0.05,0.05,0.1,0.1,0.3]
billArray[currBillindex].ftotal = restaurantSplit(currBillindex)
restOutput(currBillindex)

//Switch back to bill 1
print("Switch back to Bill #1, change input and regenerate outputs:")
billArray[0].switchBill()
billArray[currBillindex].restaurant().tip = 0.1
billArray[currBillindex].ftotal = restaurantSplit(currBillindex)
restOutput(currBillindex)

//Create a new Rent Bill
currBill = rentBill()
currBill.switchBill()

billArray[currBillindex].rent().rent = 2200
billArray[currBillindex].rent().cable = 53.21
billArray[currBillindex].rent().electric = 23.75
billArray[currBillindex].rent().water = 68.9
billArray[currBillindex].rent().sanitation = 10
billArray[currBillindex].rent().internet = 24
billArray[currBillindex].rent().heat = 38.81
billArray[currBillindex].rent().other.appendContentsOf([51.2, 12.4, 0.41, 5.99])
billArray[currBillindex].numsplit = 8
billArray[currBillindex].even = 0
billArray[currBillindex].percent += [0.1,0.2,0.1,0.05,0.05,0.1,0.1,0.3]
billArray[currBillindex].ftotal = rentSplit(currBillindex)

rentOutput(currBillindex)




