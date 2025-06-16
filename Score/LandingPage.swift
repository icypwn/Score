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

    struct toggleButton: View {
        // Args
        @State private var buttonSelected = false
        var buttonLabel: String
        
        var body: some View {
            Button(action: {
                buttonSelected.toggle() // What happens when the button is clicked (using closure)
            }) { // What the button looks like
                Text(buttonLabel)
                    .padding()
                    .background(buttonSelected ? Color.green : Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
    }
    
    var body: some View {
            VStack {
                Text("how old are you?")
                    .padding(.horizontal, 40.0)
                toggleButton(buttonLabel: "14-24")
                toggleButton(buttonLabel: "25-35")
                toggleButton(buttonLabel: "36-46")
                
                // ? How do I make sure multiple state variables aren't selected
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


#Preview {
    LandingPage9()
}
