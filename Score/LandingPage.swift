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
                .bold()
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
            .bold()
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
            .bold()
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
            .bold()
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
            .bold()
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
            .bold()
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
            .bold()
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
            .bold()
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
                
                ForEach(options, id: \.self) { option in
                    Button(action: {
                        selectedAgeGroup = option
                    }) {
                        Text(option)
                            .padding()
                            .frame(maxWidth: 300.0)
                            .background(selectedAgeGroup == option ? Color.init(red: 104/255, green: 242/255, blue: 242/255) : Color.gray.opacity(0.3))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.system(size: 30))
                    }
                }
                
                NavigationLink(destination: LandingPage11()) {
                    Text("continue")
                }
                .font(.system(size: 20))
            }
            .customBackground("Landing Page #1")
            .bold()
            .font(.system(size: 44, weight: .bold, design: .rounded))
            .foregroundColor(.black)
    #if os(iOS)
        .navigationBarHidden(true)
    #endif
    }
}

struct LandingPage11: View {
    // Shared state that stores the selected label
    @State private var selectedGoal: String? = nil

    let options = ["physical 💪", "mental 🧠", "career 👨‍💼", "financial 💰"]

    var body: some View {
                
            VStack(spacing: 20) {
                Text("goal type?")
                    .padding(.vertical, 10)
                    .padding(.horizontal, 10.0)
                    .multilineTextAlignment(.center)
                
                ForEach(options, id: \.self) { option in
                    Button(action: {
                        selectedGoal = option
                    }) {
                        Text(option)
                            .padding()
                            .frame(maxWidth: 300.0)
                            .background(selectedGoal == option ? Color.init(red: 104/255, green: 242/255, blue: 242/255) : Color.gray.opacity(0.3))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .font(.system(size: 30))
                    }
                }
                
                NavigationLink(destination: LandingPage12()) {
                    Text("continue")
                }
                #if os(iOS)
                    .navigationBarHidden(true)
                #endif
                .font(.system(size: 20))
            }
            .customBackground("Landing Page #1")
            .bold()
            .font(.system(size: 44, weight: .bold, design: .rounded))
            .foregroundColor(.black)
    }
}

struct LandingPage12: View {
    
    @State private var GoalDifficulty = 5.0
    
    var body: some View {
        VStack {
            Text("diffculy level?")
            // Print (rounded) difficulty level
            Text("\(round(GoalDifficulty * 10)/10)")
                .padding(.vertical, 10)
                .padding(.horizontal, 10.0)
                .multilineTextAlignment(.center)
                .bold()
                .font(.system(size: 44, weight: .bold, design: .rounded))
                .foregroundColor(.black)
            Gauge(value: GoalDifficulty, in: 0...10) {
                Text("difficulty level")
            }
            .gaugeStyle(.accessoryCircularCapacity)
            Slider(value: $GoalDifficulty, in: 0...10, step: 0.5)
                .frame(width: 300)
        }
        .customBackground("Landing Page #1")
    #if os(iOS)
        .navigationBarHidden(true)
    #endif
    }
}



#Preview {
    LandingPage1()
}
