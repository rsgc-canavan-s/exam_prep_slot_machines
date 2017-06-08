import Foundation

/*
 
 ORGANIZING YOUR SOLUTION
 
 A good way to orgaize your code is to separate your code into the three sections - input, process, output – as much as possible.
 
 The start of a solution is implemented below. Consider all the possible inputs. Can you finish the solution?
 
 */

/*
 
 INPUT
 
 Be sure that your implementation of this section discards all the possible bad inputs the user could provide.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */
var inputToProcess : String = ""
var numberOfQuarters : Int = 0
// Loop until valid input is received
while inputToProcess == "" {
    
    // Show the prompt
    print("How many quarters does Martha have in the jar?\n", terminator: "")
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = input {
        if let inputAsInteger = Int(notNilInput) {
            if inputAsInteger >= 1 && inputAsInteger <= 999 {
                numberOfQuarters = inputAsInteger
            }
            
        }
        // You probably need to add additional checks to be sure the
        // input received is valid
        // Add checks as needed...
        
        // Save the input given, as we are certain it's what we are looking for now
        inputToProcess = notNilInput
    }
    
}

var firstMachine : Int = 0
var inputToProcess2 : String = ""
while inputToProcess2 == "" {
    
    // Show the prompt
    print("How many times has the first slot machine been played since paying out?\n", terminator: "")
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = input {
        if let inputAsInteger = Int(notNilInput) {
            if inputAsInteger >= -1 && inputAsInteger <= 34 {
                firstMachine = inputAsInteger
            }
            
        }
        // You probably need to add additional checks to be sure the
        // input received is valid
        // Add checks as needed...
        
        // Save the input given, as we are certain it's what we are looking for now
        inputToProcess2 = notNilInput
    }
    
}
var secondMachine : Int = 0
var inputToProcess3 : String = ""
while inputToProcess3 == "" {
    
    // Show the prompt
    print("How many times has the second slot machine been played since paying out?\n", terminator: "")
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = input {
        if let inputAsInteger = Int(notNilInput) {
            if inputAsInteger >= -1 && inputAsInteger <= 99 {
                secondMachine = inputAsInteger
            }
            
        }
        // You probably need to add additional checks to be sure the
        // input received is valid
        // Add checks as needed...
        
        // Save the input given, as we are certain it's what we are looking for now
        inputToProcess3 = notNilInput
    }
    
}
var thirdMachine : Int = 0
var inputToProcess4 : String = ""
while inputToProcess4 == "" {
    
    // Show the prompt
    print("How many times has the third slot machine been played since paying out?\n", terminator: "")
    
    // Get the user's input
    var input : String?
    input = readLine()
    
    // Use optional binding to see if the string can be unwrapped (to see if it is not nil)
    if let notNilInput = input {
        if let inputAsInteger = Int(notNilInput) {
            if inputAsInteger >= -1 && inputAsInteger <= 9 {
                thirdMachine = inputAsInteger
            }
            
        }
        // You probably need to add additional checks to be sure the
        // input received is valid
        // Add checks as needed...
        
        // Save the input given, as we are certain it's what we are looking for now
        inputToProcess4 = notNilInput
    }
    
}
/*
 
 PROCESS
 
 Here is where you implement the logic that solves the problem at hand.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

// Add 'process' code below....
var loopIterations : Int = 0
while numberOfQuarters > 0 {
    numberOfQuarters -= 3
    loopIterations += 3
    firstMachine += 1
    if firstMachine%35 == 0 && numberOfQuarters > -1 {
        numberOfQuarters += 30
        firstMachine = 0
    }
    secondMachine += 1
    if secondMachine%100 == 0 && numberOfQuarters > -1 {
        numberOfQuarters += 60
        secondMachine = 0
    }
    thirdMachine += 1
    if thirdMachine%10 == 0 && numberOfQuarters > -1 {
        numberOfQuarters += 9
        thirdMachine = 0
    }
    
}


/*
 
 OUTPUT
 
 Here is where you report the results of the 'process' section above.
 
 Make use of your test plan and algorithm to ensure your code is complete.
 
 */

// Add 'output' code below... replace what is here as needed.
print("Martha plays \(loopIterations) times before going broke.")
