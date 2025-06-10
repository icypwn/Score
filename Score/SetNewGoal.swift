//
//  SetNewGoal.swift
//  Score
//
//  Created by Ethan Harbinger on 6/9/25.
//

import SwiftUI

struct SetNewGoal: View {
    
    enum GoalType {
        case physical
        case mental
        case career
        case financial
    }
    
    // State variables
    @State private var selectedGoal: GoalType? = nil
    @State private var navigation = false
    
    var body: some View {
        
    NavigationStack {
        VStack(spacing: 20) {
            NavigationLink(destination: NewGoalDetails(), isActive: $navigation) {
                EmptyView()
            }
                Button("Physical Goal 💪") {
                    selectedGoal = .physical
                    navigation = true
                }
                Button("Mental Goal 🧠") {
                    selectedGoal = .mental
                    navigation = true
                }
                Button("Career Goal 👨‍💼") {
                    selectedGoal = .career
                    navigation = true
                }
                Button("Financial Goal 💰") {
                    selectedGoal = .financial
                    navigation = true
                }
            }
            
        }
    }
}

#Preview {
    SetNewGoal()
}
