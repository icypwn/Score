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
                            NavigationLink("Lose 50 lbs by summer") {
                                NewGoalForm(goal: "Lose 50 lbs by summer")
                            }
                            NavigationLink("Run a half marathon") {
                                NewGoalForm(goal: "Run a half marathon")
                            }
                            NavigationLink("Gain 20 lbs of lean muscle") {
                                NewGoalForm(goal: "Gain 20 lbs of lean muscle")

                            }
                            NavigationLink("Start eating healthier") {
                                NewGoalForm(goal: "Start eating healthier")

                            }
                        case .mental:
                            NavigationLink("Stop letting things get to me") {
                                NewGoalForm(goal: "Stop letting things get to me")

                            }
                            NavigationLink("Overcome my depression") {
                                NewGoalForm(goal: "Overcome my depression")

                            }
                            NavigationLink("Meditate for 20 minutes a day") {
                                NewGoalForm(goal: "Meditate for 20 minutes a day")

                            }
                            NavigationLink("Start a new relationship") {
                                NewGoalForm(goal: "Start a new relationship")
                            }
                        case .career:
                            NavigationLink("Get a raise at my job") {
                                NewGoalForm(goal: "Get a raise at my job")
                            }
                            NavigationLink("Find a career I like") {
                                NewGoalForm(goal: "Find a career I like")
                            }
                            NavigationLink("Apply for 20 jobs a day") {
                                NewGoalForm(goal: "Apply for 20 jobs a day")
                            }
                            NavigationLink("Get a job in big tech") {
                                NewGoalForm(goal: "Get a job in big tech")
                            }
                        case .financial:
                            NavigationLink("Start making passive income") {
                                NewGoalForm(goal: "Start making passive income")
                            }
                            NavigationLink("Learn how to invest") {
                                NewGoalForm(goal: "Learn how to invest")
                            }
                            NavigationLink("Be able to afford a house") {
                                NewGoalForm(goal: "Be able to afford a house")
                            }
                            NavigationLink("Stop living paycheck to paycheck") {
                                NewGoalForm(goal: "Stop living paycheck to paycheck")
                            }
                        }                    }
                }
                .bold()
                .padding(.bottom, 50)
                    
        }
    }
}

#Preview {
    NewGoalDetails(goalType: .career)
}
