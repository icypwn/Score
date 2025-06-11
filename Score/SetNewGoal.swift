//
//  SetNewGoal.swift
//  Score
//
//  Created by Ethan Harbinger on 6/9/25.
//

import SwiftUI

struct SetNewGoal: View {
    
    enum GoalType: String, CaseIterable {
        case physical
        case mental
        case career
        case financial
    }
    
    var body: some View {
        VStack(spacing: 50) {
            Text("Set a New Goal")
                .font(.title)
                .bold()
                .foregroundStyle(
                    LinearGradient(
                        colors: [.blue, .purple],
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                )
            VStack(spacing: 20) {
                NavigationLink("Physical Goal 💪") {
                    // Since we're passing in a parameter that expects GoalType, Swift knows we mean GoalType.physical so we don't have to write it 
                    NewGoalDetails(goalType: .physical)
                }
                .bold()
                
                NavigationLink("Mental Goal 🧠") {
                    NewGoalDetails(goalType: .mental)
                }
                .bold()
                
                NavigationLink("Career Goal 👨‍💼") {
                    NewGoalDetails(goalType: .career)
                }
                .bold()
                
                NavigationLink("Financial Goal 💰") {
                    NewGoalDetails(goalType: .financial)
                }
            }
            .bold()
            .padding(.bottom, 60)
        }
    }
}

#Preview {
    SetNewGoal()
}
