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

//Set up any necessary variables
var pretaxtotal: Double
var posttaxtotal: Double
var tippercent: Double
var finaltotal: Double
var numsplit: Int
var splitpercent: [Double] = []
var finalsplit: [Double] = []
var spliteven: Int



//Define 

pretaxtotal = 45.52
posttaxtotal = 48.52
tippercent = 0.20
numsplit = 5
spliteven = 1























