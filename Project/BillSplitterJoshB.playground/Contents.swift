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
    var type: billType = .undefined
    var ftotal: Double = 0
    var numsplit: Int = 0
    var percent: [Double] = []
    var finsplit: [Double] = []
    var even: Int = 1
    var arrayNum = -1
    func switchBill(){
        currBillindex = arrayNum
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
        self.arrayNum = billArray.count
        billArray.insert(self, atIndex: arrayNum)
    }
}

var billArray = [restBill]()

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
billArray[currBillindex].pretax = 45.31
billArray[currBillindex].posttax = 48.52
billArray[currBillindex].tip = 0.20
billArray[currBillindex].numsplit = 5
billArray[currBillindex].even = 0
billArray[currBillindex].percent += [0.40,0.2,0.1,0.15,0.15]

func restaurantSplit (billIndex: Int) -> Double{
    //Clear the final split array of any pregenerated outputs.
    billArray[billIndex].finsplit = []
    //Calculate the tip based on the pretax total.
    let tipamount: Double = billArray[billIndex].tip * billArray[billIndex].pretax
    //Determine the final total based on tip + posttax total
    var finaltot = tipamount + billArray[billIndex].posttax
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

//Output function to help with printing out the returns from the bill splitting.
func output (billIndex: Int){
    print("Including a \(billArray[billIndex].tip * 100)% tip, the final total is $\(billArray[billIndex].ftotal)")
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

//Run our restaurantSplit function with our defined inputs
billArray[currBillindex].ftotal = restaurantSplit(currBillindex)
//Call our output function to print out the results.
output(currBillindex)

currBill = restBill()
currBill.switchBill()

//Bill #2 inputs
print("Create Bill #2, switch to it, fill in inputs and output results:")
billArray[currBillindex].pretax = 158.32
billArray[currBillindex].posttax = 183.21
billArray[currBillindex].tip = 0.15
billArray[currBillindex].numsplit = 8
billArray[currBillindex].even = 0
billArray[currBillindex].percent += [0.1,0.2,0.1,0.05,0.05,0.1,0.1,0.3]
billArray[currBillindex].ftotal = restaurantSplit(currBillindex)
output(currBillindex)

//Switch back to bill 1
print("Switch back to Bill #1, change input and regenerate outputs:")
billArray[0].switchBill()
billArray[currBillindex].tip = 0.1
billArray[currBillindex].ftotal = restaurantSplit(currBillindex)
output(currBillindex)


