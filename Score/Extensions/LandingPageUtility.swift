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
func goldNumbersFromString(string: String) -> some View {
    // Alternative approach using AttributedString for more complex styling
    func createAttributedString(from string: String) -> AttributedString {
        var attributedString = AttributedString()
        
        for character in string {
            var characterString = AttributedString(String(character))
            
            if character.isNumber {
                characterString.foregroundColor = Color(red: 167/255, green: 161/255, blue: 123/255)
            } else {
                characterString.foregroundColor = Color.white
            }
            
            attributedString.append(characterString)
        }
        
        return attributedString
    }
    
    return Text(createAttributedString(from: string))
        .shadow(radius: 5)
}
