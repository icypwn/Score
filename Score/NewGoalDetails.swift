//
//  NewGoalDetails.swift
//  Score
//
//  Created by Ethan Harbinger on 6/9/25.
//

import SwiftUI

struct NewGoalDetails: View {
    
    // Set goal type based on passed argument
    let goalType: SetNewGoal.GoalType
    
    @State private var goal = ""
    
    var body: some View {
        VStack(spacing: 20) {
                VStack(spacing: 50) {
                    Text("\(goalType.rawValue.capitalized) Goals")
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
                        switch(goalType) {                 case .physical:
                            Text("Lose 50 lbs by summer")
                            Text("Run a half marathon")
                            Text("Gain 20 lbs of muscle")
                            Text("Start eating healthier")
                        case .mental:
                            Text("Stop letting things get to me")
                            Text("Overcome my depression")
                            Text("Meditate for 20 minutes a day")
                            Text("Build a new relationship")
                        case .career:
                            Text("Get a raise at my job")
                            Text("Find a career I like")
                            Text("Apply for 20 jobs a day")
                            Text("Get a job in big tech")
                        case .financial:
                            Text("Start making passive income")
                            Text("Learn how to invest")
                            Text("Be able to afford a house")
                            Text("Stop living paycheck to paycheck")
                        }
                    }
                }
                .padding(.bottom, 50)
                    
        }
    }
}

#Preview {
    NewGoalDetails(goalType: .career)
}
