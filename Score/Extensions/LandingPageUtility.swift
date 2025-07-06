//
//  LandingPageUtility.swift
//  Score
//
//  Created by Ethan Harbinger on 6/19/25.
//

import SwiftUI

/// Makes a question box view for each element in an array and recieve the response in a given state variable
///
/// Parameter arrayName: Name of the array you'd like to iterate through and display as questions
/// Parameter outputState: State variable that records the user selected answer out of the displayed questions
/// Returns: View with the displayed questions
func arrayToButtons(arrayName: Array<String>, outputState: Binding<String?>) -> some View {
    
    return (
    
    ForEach(arrayName, id: \.self) { arrayElement in
        Button(action: {
            outputState.wrappedValue = arrayElement
        }) {
            Text(arrayElement)
                .padding()
                .frame(maxWidth: 300.0)
                .background(outputState.wrappedValue == arrayElement ? Color.init(red: 167/255, green: 161/255, blue: 123/255) : Color.gray.opacity(0.3))
                .foregroundColor(.white)
                .cornerRadius(10)
                .font(.system(size: 30, weight: .bold, design: .rounded))
        }
    }
    
        
    
    )
}

/// Takes string and returns a view that makes the numbers golden
/// ! We can update gold to any color in the future
func goldNumbersFromString(string: String) -> some View {
    
    // Use gemini's approach
    // A separate function is used to parse the text
    // To apply these additional properties to the text, we create a struct to define the characters inside of it
    // We then return an array of structs for this function (should include UUID for this struct so we can use a for each through it [ex: 0])
    // Loop through this array with the newly defined characters and apply the stylizations based on the definitions inside of the struct
    
    // * This is because ForEach is used for describing your UI's structure based on already known properties and definitions (not for running calculations and changing state)
    
    
    var temp_string: String = "" // Used to hold the current num/char string
    var number_flag: Bool = false
    return (
        AnyView (
            HStack {
                ForEach(Array(string), id: \.self) { character in // ForEach loops are used to display views, not make calculations
                        // We're going add to add the current temp string to the HStack ONLY when there a transition from number to char or vice versa
                        // We still want to add to the temp string every iteration
                        if(character.isNumber) {
                            if(!number_flag) { // Transition [char -> num] (Add the previous character string to the HStack as a text view)
                                number_flag = true
                                Text(temp_string) // First one will be empty (that's okay)
                                    .foregroundColor(Color(red: 167/255, green: 161/255, blue: 123/255))
                                    .shadow(radius: 5)
                                temp_string = "" // Reset temp string
                            }
                            temp_string += String(character)
                        }
                        else {
                            if(number_flag) { // Transition [num -> char]
                                number_flag = false
                                Text(temp_string)
                                    .foregroundStyle(.white)
                                temp_string = ""
                            }
                            temp_string += String(character)
                        } // 3 2-legged cats have 13.5 lives
                }
            }
        )
    )
}
