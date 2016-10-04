//Fibonacci Number Calculator

// Set up the array to store the Fibonacci Numbers, including the first two numbers, 0 and 1
var fibonacci: [Double] = [0,1]

//Create a closure to help print out results for us by just giving it the Fib index and value
let fibPrinter = {(index: Int, value: Double) in
    print("The \(index)th Fibonacci number is: \(value)" )
}

//Function to calculate the fibnumbers, access the array for the 2 previous numbers, add them and then return the value.
func fibCalc(numbers: [Double], index: Int)->Double{
    var nextnum: Double = 0
    nextnum = numbers[index - 1] + numbers[index - 2]
    return nextnum
}
//Print the first inital values using our closure.
    fibPrinter( 1, fibonacci[0])
    fibPrinter( 2, fibonacci[1])
//Start at index 2 since we have 0 and 1
var index: Int = 2
//Use a while loop til we calcuate the 1000th index
while(index < 1000){
    //Call the function and keep the returnvalue
    var retval = fibCalc(fibonacci, index: index)
    //Append it to the array
    fibonacci.append(retval)
    //Increment the index for the next loop
    index += 1
    //Call our printer closure to print out the number
    fibPrinter( index, retval)
}