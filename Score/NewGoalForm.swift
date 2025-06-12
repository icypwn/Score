//
//  NewGoalForm.swift
//  Score
//
//  Created by Ethan Harbinger on 6/10/25.
//

import SwiftUI

struct NewGoalForm: View {
        
    var goal = ""
    @State var weeks = 5
    let step = 1
    let range = 1...100
    @State var minutesPerDay = 30.0       // Changed to Double for Slider
    @State var isEditing = false// Added @State
    @State var currentDate = Calendar()
    
    var body: some View {
        Form {
            Section(header: Text("Set New Goal")) {
                Text("Goal: \(goal)")
                
                VStack(alignment: .leading) {
                    Text("Minutes per day: \(Int(minutesPerDay))")
                    Slider(
                        value: $minutesPerDay,
                        in: 0...100,
                        onEditingChanged: { editing in
                            isEditing = editing
                        }
                    )
                }
                Stepper(
                    value: $weeks,
                    in: range,
                    step: step
                ) { Text("Weeks: \(weeks)") }
                // TODO Calculate end date from weeks and don't allow user to change this
                DatePicker(
                    "End Date",
                    selection: $date,
                    displayedComponents: [.date]
                )
            }
                    
                
        }
    }
}

#Preview {
    NewGoalForm()
}
