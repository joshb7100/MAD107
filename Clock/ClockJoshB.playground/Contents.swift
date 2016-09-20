//: Playground - noun: a place where people can play
/* This program is a clock that keeps track of hours,minutes, and seconds. */

import UIKit

//Store the time variables in these variables
var hours = 0
var minutes = 0
var seconds = 0

//Max constants say what the max values are for each time variable
let maxhours = 24
let maxminutes = 60
let maxseconds = 60
//While(true) causes the loop to keep running forever.
while(true) {
    print("Time is \(hours):\(minutes):\(seconds)")
seconds+=1
    //Check if seconds = 60 and if so add 1 to minutes and reset seconds
    if(seconds == maxseconds){
        minutes+=1
        seconds = 0
        //Check if minutes = 60 if so add 1 to hour and reset minutes
        if(minutes == maxminutes){
            hours+=1
            minutes = 0
            //Check if the hours = 24, if so then reset the hour counter
            if(hours == maxhours){
                hours = 0
                }
            }
    }
    //Sleep function causes it to wait 1 one second before continuing.
    sleep(1)
}
