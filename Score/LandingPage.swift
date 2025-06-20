//
//  ContentView.swift
//  Score
//
//  Created by Ethan Harbinger on 6/9/25.
//

import SwiftUI

struct LandingPage1: View {
    
    // For flashing text
    @State private var isVisible = true
    
    var body: some View {
        NavigationStack {
            NavigationLink(destination: LandingPage2()) {
                VStack {
                    Text("hello there")
                        .padding(.vertical, 70.0) // Separates the tap without moving the text above
                    Text("tap anywhere to continue")
                        .flashText(duration: 2.0)
                        .font(.system(size: 15))
                    
                }
                .customBackground("Landing Page #1")
                .font(.system(size: 44, weight: .bold, design: .rounded))
                .foregroundColor(.black)
            }
        }
        #if os(iOS)
        // This line will only be compiled for iOS targets
        .navigationBarHidden(true)
        #endif
        }
    
}

struct LandingPage2: View {
    var body: some View {
        NavigationLink(destination: LandingPage3()) {
            VStack {
                VStack {
                    Text("we are so")
                    Text("proud of you")
                }
                .padding(.vertical, 70.0)
                Text("tap anywhere to continue")
                    .flashText(duration: 2.0, hiddenDuration: 5.0)
                    .font(.system(size: 15))
            }
            .customBackground("Landing Page #1")
            .font(.system(size: 44, weight: .bold, design: .rounded))
            .foregroundColor(.black)
        }
        #if os(iOS)
        .navigationBarHidden(true)
        #endif
    }
}

struct LandingPage3: View {
    var body: some View {
        NavigationLink(destination: LandingPage4()) {
            VStack {
                Group {
                    Text("fear stops") +
                    Text(" 49%") +
                    Text(" of people from") +
                    Text(" pursuing their goals")
                }
                .padding(.horizontal, 40.0)
                .padding(.vertical, 70.0)
                Text("tap anywhere to continue")
                    .flashText(duration: 2.0, hiddenDuration: 5.0)
                    .font(.system(size: 15))
            }
            .customBackground("Landing Page #1")
            .font(.system(size: 44, weight: .bold, design: .rounded))
            .foregroundColor(.black)
        }
    #if os(iOS)
        .navigationBarHidden(true)
    #endif
    }
}

struct LandingPage4: View {
    var body: some View {
        NavigationLink(destination: LandingPage5()) {
            VStack {
                Group {
                    Text("you're making a") +
                    Text(" big") +
                    Text(" step in the right direction")
                }
                    .padding(.horizontal, 40.0)
                    .padding(.vertical, 70.0)
                Text("tap anywhere to continue")
                    .flashText(duration: 2.0, hiddenDuration: 5.0)
                    .font(.system(size: 15))
            }
            .customBackground("Landing Page #1")
            .font(.system(size: 44, weight: .bold, design: .rounded))
            .foregroundColor(.black)
        }
    #if os(iOS)
        .navigationBarHidden(true)
    #endif
    }
}

struct LandingPage5: View {
    var body: some View {
        NavigationLink(destination: LandingPage6()) {
            VStack {
                Text("and luckily for you...")
                    .padding(.horizontal, 40.0)
                    .padding(.vertical, 70.0)
                Text("tap anywhere to continue")
                    .flashText(duration: 2.0, hiddenDuration: 5.0)
                    .font(.system(size: 15))
            }
            .customBackground("Landing Page #1")
            .font(.system(size: 44, weight: .bold, design: .rounded))
            .foregroundColor(.black)
        }
    #if os(iOS)
        .navigationBarHidden(true)
    #endif
    }
}

struct LandingPage6: View {
    var body: some View {
        NavigationLink(destination: LandingPage7()) {
            VStack {
                Text("we're here to help!")
                    .padding(.horizontal, 40.0)
                    .padding(.vertical, 70.0)
                Text("tap anywhere to continue")
                    .flashText(duration: 2.0, hiddenDuration: 5.0)
                    .font(.system(size: 15))
            }
            .customBackground("Landing Page #1")
            .font(.system(size: 44, weight: .bold, design: .rounded))
            .foregroundColor(.black)
        }
    #if os(iOS)
        .navigationBarHidden(true)
    #endif
    }
}

struct LandingPage7: View {
    var body: some View {
        NavigationLink(destination: LandingPage8()) {
            VStack {
                Group {
                    Text("people with an") +
                    Text(" accountability partner") +
                    Text(" are") +
                    Text(" 95%") +
                    Text(" more likely to") +
                    Text(" reach their goals")
                }
                .padding(.horizontal, 40.0)
                .padding(.vertical, 70.0)
                Text("tap anywhere to continue")
                    .flashText(duration: 2.0, hiddenDuration: 5.0)
                    .font(.system(size: 15))
            }
            .customBackground("Landing Page #1")
            .font(.system(size: 44, weight: .bold, design: .rounded))
            .foregroundColor(.black)
        }
    #if os(iOS)
        .navigationBarHidden(true)
    #endif
    }
}

struct LandingPage8: View {
    var body: some View {
        NavigationLink(destination: LandingPage9()) {
            VStack {
                Text("so let's get after this, together.")
                    .padding(.horizontal, 40.0)
                    .padding(.vertical, 70.0)
                Text("tap anywhere to continue")
                    .flashText(duration: 2.0, hiddenDuration: 5.0)
                    .font(.system(size: 15))
            }
            .customBackground("Landing Page #1")
            .font(.system(size: 44, weight: .bold, design: .rounded))
            .foregroundColor(.black)
        }
    #if os(iOS)
        .navigationBarHidden(true)
    #endif
    }
}


struct LandingPage9: View {
    // Shared state that stores the selected label
    @State private var selectedAgeGroup: String? = nil

    let options = ["14–24", "25–34", "35–44", "45-54", "55+"]

    var body: some View {
                
            VStack(spacing: 20) {
                Text("how old are you?")
                    .padding(.vertical, 10)
                
                arrayToButtons(arrayName: options, outputState: $selectedAgeGroup)
                
                NavigationLink(destination: LandingPage11()) {
                    Text("continue")
                }
                .font(.system(size: 20, weight: .bold, design: .rounded))
            }
            .customBackground("Landing Page #1")
            .font(.system(size: 44, weight: .bold, design: .rounded))
            .foregroundColor(.black)
    #if os(iOS)
        .navigationBarHidden(true)
    #endif
    }
}

struct LandingPage11: View {
    // Shared state that stores the selected label
    @State private var selectedGoalType: String? = nil

    let options = ["physical 💪", "mental 🧠", "career 👨‍💼", "financial 💰"]

    var body: some View {
                
            VStack(spacing: 20) {
                Text("goal type?")
                    .padding(.vertical, 10)
                    .padding(.horizontal, 10.0)
                    .multilineTextAlignment(.center)
                
                arrayToButtons(arrayName: options, outputState: $selectedGoalType)
                
                NavigationLink(destination: LandingPage12()) {
                    Text("continue")
                }
                .font(.system(size: 20, weight: .bold, design: .rounded))
                #if os(iOS)
                    .navigationBarHidden(true)
                #endif
            }
            .customBackground("Landing Page #1")
            .font(.system(size: 44, weight: .bold, design: .rounded))
            .foregroundColor(.black)
    }
}

struct LandingPage12: View {
    
    @State private var demoGoal: String? = nil
    
    let physicalGoals = ["Run a half marathon", "Lose 30 lbs of fat", "Gain 15 lbs of lean muscle", "Start eating healthier"]
    
    let mentalGoals = ["Build self confidence", "Lower my stress levels", "Overcome my social anxiety", "Become more disciplined"]
    
    let careerGoals = ["Get a promotion at my job", "Open up a business", "Achieve a work-life balance", "Get my dream job"]
    
    let financialGoals = ["Start earning passive income", "Pay off all my debt", "Improve my credit score", "Learn how to invest"]

    let selectedGoalType = "physical 💪"
    
    var body: some View {
        
        VStack {
            
            Text("select a demo goal?")
                .multilineTextAlignment(.center)
                .font(.system(size: 44, weight: .bold, design: .rounded))
            
            switch selectedGoalType {
            case "physical 💪":
                arrayToButtons(arrayName: physicalGoals, outputState: $demoGoal)
            case "mental 🧠":
                arrayToButtons(arrayName: mentalGoals, outputState: $demoGoal)
            case "career 👨‍💼":
                arrayToButtons(arrayName: careerGoals, outputState: $demoGoal)
            case "financial 💰":
                arrayToButtons(arrayName: financialGoals, outputState: $demoGoal)
            default:
                Text("Error - Please select a goal type")
            }
            NavigationLink(destination: LandingPage14()) {
                Text("continue")
            }
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.black)
        }
        .customBackground("Landing Page #1")
    #if os(iOS)
        .navigationBarHidden(true)
    #endif
    }
}



struct LandingPage13: View {
    
    @State private var GoalDifficulty: Double = 5.0
    private var redToGreenGradient = LinearGradient(gradient: Gradient(colors: [.green, .red]), startPoint: .leading, endPoint: .trailing)
    
    func numberToColor(number: Double) -> Color {
        let percentRed = number/10.0
        return Color(
            red: percentRed,
            green: 1.0 - percentRed,
            blue: 0.0
        )
    }
    
    var body: some View {
        
        VStack {
            VStack(spacing: -5) {
                HStack {
                    Text("how")
                    Text(" hard")
                        .foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0))
                        .shadow(radius: 5)
                }
                Text(" is your goal?")
            }
            .lineSpacing(200.0)
            .multilineTextAlignment(.center)
            .font(.system(size: 44, weight: .bold, design: .rounded))
            
            Text((round(GoalDifficulty * 10)/10), format: .number.precision(.fractionLength(1)))
                .padding(.vertical, 10)
                .padding(.horizontal, 10.0)
                .multilineTextAlignment(.center)
                .font(.system(size: 44, weight: .bold, design: .rounded))
                .shadow(radius: 5)
                .foregroundColor(numberToColor(number: GoalDifficulty))
            ZStack {
                redToGreenGradient
                    .frame(width: 200, height: 20)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                    .blur(radius: 1)
                    .opacity(1.0)
                Slider(value: $GoalDifficulty, in: 0...10, step: 0.5)
                    .frame(width: 200)
                    .tint(.clear)
            }
            NavigationLink(destination: LandingPage14()) {
                Text("continue")
            }
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.black)
        }
        .customBackground("Landing Page #1")
    #if os(iOS)
        .navigationBarHidden(true)
    #endif
        
    }
}

struct LandingPage14: View {
    
    @State private var deadline: Date = Date()
    
    let today = Calendar.current.date(byAdding: .day, value: 0, to: Date())!
    
    var timeLeftComponents: DateComponents {
            Calendar.current.dateComponents(
                [.year, .month, .weekOfMonth, .day],
                from: today,
                to: deadline
            )
        }
    
    var body: some View {
            
        VStack {
            Text("what is your deadline for this goal?")
                .padding(.horizontal, 20)
            DatePicker("", selection: $deadline, in: Date()..., displayedComponents: .date)
                .labelsHidden()
            
            if let year = timeLeftComponents.year,
               let month = timeLeftComponents.month,
               let week = timeLeftComponents.weekOfMonth,
               let day = timeLeftComponents.day,
               day != 0 || month != 0 || week != 0 || year != 0
            
            {
                
                Text("Time left: \(year)y \(month)m \(week)w \(day)d")
                    .font(.headline)
                    .foregroundColor(Color(red: 89/255, green: 89/255, blue: 89/255))
                
                
                NavigationLink(destination: LandingPage14()) {
                    Text("continue")
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                        .padding(.top, 2)
                }
                
            }
                
        }
        .multilineTextAlignment(.center)
        .font(.system(size: 44, weight: .bold, design: .rounded))
        .foregroundColor(.black)
        .customBackground("Landing Page #1")
    #if os(iOS)
        .navigationBarHidden(true)
        .datePickerStyle(.wheel)
    #endif
    }
}



#Preview {
    LandingPage14()
}
