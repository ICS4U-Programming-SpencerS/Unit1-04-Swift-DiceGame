//
//  DiceGame.Swift
//
//  Created by Spencer Scarlett
//  Created on 2024-Mar-16
//  Version 1.0
//  Copyright (c) 2024 Spencer Scarlett. All rights reserved.
//
//  Dice roll game

// Important module
import Foundation

// Counter variable for while loop
var counter = 0

// Guessing counter variable
var guessAmount = 0

// Random number generator from 1-6
let randomNumber = Int.random(in: 1...6)

// Opening statement
print("This program rolls a dice and")
print("you have to guess the correct number!")

// While loop that contains all the code
// Checks if counter is 0 or needs to end loop
while counter == 0 {
    // Input statement
    print("Enter your guess number: ")

    // Try to read the guess
    if let guessString = readLine(),
        let guessInteger = Int(guessString) {
        // Try catch for invalid (non-whole numbers or out of range 1-6)
            if guessInteger > 6 || guessInteger < 1 {
                print("Input must range from 1-6!")
                break
            } else {
                // If statement with answer key
                // Correct statement
                if guessInteger == randomNumber {
                    guessAmount += 1
                    print("Correct number! You used \(guessAmount) guess(es)!")
                    // Ends loop
                    counter += 1

                    // Else if statement for greater
                    } else if guessInteger > randomNumber {
                        print("Inputted guess is too high!")
                        guessAmount += 1

                    // Else if statement for less
                    } else if guessInteger < randomNumber {
                        print("Inputted guess is too low!")
                        guessAmount += 1

                    // Unused/debugging statement
                    } else {
                        print("Bug statement, should never be used.")
                    }
                }
        } else {
            print("Value must be a whole number between 1-6")
            // Breaks while loop, stops program
            break
    }
}
