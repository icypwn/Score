//
//  ContentView.swift
//  Score
//
//  Created by Ethan Harbinger on 6/9/25.
//

import SwiftUI

enum LandingPageStep {
    case LP1
    case LP2
    case LP3
    case LP4
    case LP5
    case LP6
    case LP7
    case LP8
    case LP9
    case LP10
    case LP11
    case LP12
    case LP13
    case LP14
    case LP15
    case LP16
    case LP17
}

struct LandingPageNav: View {
    
    // User info gathered from each section of the LP
    
    @State var currentStep: LandingPageStep = .LP1
    @State private var ageGroup: String = ""
    @State private var goalType: String = ""
    @State private var userGoal: String = ""
    @State private var goalDifficulty: Float16 = 5.0
    @State private var deadline: Date = Date()
    @State private var extraInformation: String = ""
    @State private var totalDays: Int16 = 0
    @State private var coachingStyle: String = ""
    
    // Flag to determine when "tap anywhere" is active
    @State private var tapAnywhere: Bool = true

    private var exampleGoal: String {
        switch goalType {
            case "physical 💪":
            return "run a half marathon"
        case "mental 🧠":
            return "read 10 books"
        case "career 👨‍💼":
            return "get my dream job"
        case "financial 💰":
            return "pay off my debt"
        default:
            return "insert goal here" // Unknown type
        }
    }
    
    var body: some View {
        
    
        ZStack {
            
            VStack(alignment: .leading, spacing: 20) {
                
            }
            .customBackground("Landing Page #1")
            
            switch currentStep {
            case .LP1:
                LandingPage1()
                    .transition(.opacity)
            case .LP2:
                LandingPage2()
                    .transition(.opacity)
            case .LP3:
                LandingPage3()
                    .transition(.opacity)
            case .LP4:
                LandingPage4()
                    .transition(.opacity)
            case .LP5:
                LandingPage5()
                    .transition(.opacity)
            case .LP6:
                LandingPage6()
                    .transition(.opacity)
            case .LP7:
                LandingPage7()
                    .transition(.opacity)
            case .LP8:
                LandingPage8()
                    .transition(.opacity)
            case .LP9:
                // "Continue-based" navigation now
                LandingPage9(ageGroup: $ageGroup, currentStep: $currentStep)
                    .transition(.opacity)
            case .LP10:
                LandingPage10(goalType: $goalType, currentStep: $currentStep)
                    .transition(.opacity)
            case .LP11:
                LandingPage11(userGoal: $userGoal, currentStep: $currentStep, exampleGoal: exampleGoal)
                    .transition(.opacity)
            case .LP12:
                LandingPage12(goalDifficulty: $goalDifficulty, currentStep: $currentStep)
                    .transition(.opacity)
            case .LP13:
                LandingPage13(deadline: $deadline, totalDays: $totalDays, currentStep: $currentStep)
                    .transition(.opacity)
            case .LP14:
                LandingPage14(extraInformation: $extraInformation, currentStep: $currentStep)
                    .transition(.opacity)
            case .LP15:
                LandingPage15(coachingStyle: $coachingStyle, currentStep: $currentStep)
                .transition(.opacity)
            case .LP16:
                LandingPage16(
                    ageGroup: $ageGroup,
                    goalType: $goalType,
                    goal: $userGoal,
                    difficulty: $goalDifficulty,
                    days: $totalDays,
                    pastExperience: $extraInformation,
                    coachingStyle: $coachingStyle,
                    currentStep: $currentStep)
                    .transition(.opacity)
            case .LP17:
                LandingPage17()
                    .transition(.opacity)
            }
            
            if(tapAnywhere) {
                
                Color.clear
                    .contentShape(Rectangle())
                    .ignoresSafeArea(.all)
                    .onTapGesture {
                        withAnimation {
                            switch currentStep {
                            case .LP1:
                                currentStep = .LP2
                            case .LP2:
                                currentStep = .LP3
                            case .LP3:
                                currentStep = .LP4
                            case .LP4:
                                currentStep = .LP5
                            case .LP5:
                                currentStep = .LP6
                            case .LP6:
                                currentStep = .LP7
                            case .LP7:
                                currentStep = .LP8
                            case .LP8:
                                tapAnywhere = false
                                currentStep = .LP9
                            default:
                                () // Do nothing (user tapped screen too fast between LP8 and LP9
                            }
                        }
                    }
            }
        }
    }
    
}

struct LandingPage1: View {
            
    var body: some View {
        VStack {
            
            Text("hello there")
                .font(.system(size: 44, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                .padding(.vertical, 70.0)
            Text("tap anywhere to continue")
                .font(.system(size: 15, design: .rounded))
                .foregroundColor(.white)
                .flashText(duration: 2.0)
                .font(.system(size: 15))
        }
    }
}

struct LandingPage2: View {
    
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("we are so")
                Text("proud of you")
            }
            .font(.system(size: 44, weight: .bold, design: .rounded))
            .foregroundColor(.white)
            .multilineTextAlignment(.leading)
            .padding(.vertical, 70.0)
            
            Text("tap anywhere to continue")
                .flashText(duration: 2.0, hiddenDuration: 5.0)
                .font(.system(size: 15, design: .rounded))
                .foregroundColor(.white)
        }
    }
}

struct LandingPage3: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                HStack {
                    Text("fear stops")
                    Text("49%")
                        .foregroundColor(Color(red: 0.5, green: 0.5, blue: 0.5))
                        .shadow(radius: 5)
                }
                Text("of people from")
                Text("pursuing their")
                Text("goals")
            }
            .font(.system(size: 44, weight: .bold, design: .rounded))
            .padding(.vertical, 70.0)
            Text("tap anywhere to continue")
                .font(.system(size: 15, design: .rounded))
                .flashText(duration: 2.0, hiddenDuration: 5.0)
        }
        .foregroundColor(.white)
    }
}

struct LandingPage4: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("you're making a")
                HStack(spacing: 10.0) {
                    Text("big step")
                        .font(.system(size: 56, weight: .bold, design: .rounded))
                    Text("in the")
                }
                Text("right direction")
            }
            .font(.system(size: 44, weight: .bold, design: .rounded))
            .padding(.vertical, 70.0)
            Text("tap anywhere to continue")
                .font(.system(size: 15, design: .rounded))
                .flashText(duration: 2.0, hiddenDuration: 5.0)
        }
        .foregroundColor(.white)
    }
}

struct LandingPage5: View {
    var body: some View {
        VStack {
            Text("and luckily for you...")
                .font(.system(size: 44, weight: .bold, design: .rounded))
                .padding(.horizontal, 40.0) // Used horizontal padding here because it's easier than making another VStack
                .padding(.vertical, 70.0)
            Text("tap anywhere to continue")
                .font(.system(size: 15, design: .rounded))
                .flashText(duration: 2.0, hiddenDuration: 5.0)
        }
        .foregroundColor(.white)
    }
}

struct LandingPage6: View {
    var body: some View {
        VStack {
            Text("we're here to help!")
                .font(.system(size: 44, weight: .bold, design: .rounded))
                .padding(.horizontal, 40.0)
                .padding(.vertical, 70.0)
            Text("tap anywhere to continue")
                .font(.system(size: 15, design: .rounded))
                .flashText(duration: 2.0, hiddenDuration: 5.0)
        }
        .foregroundColor(.white)
    }
}

struct LandingPage7: View {
    var body: some View {
        VStack {
            VStack (alignment: .leading) {
                Text("people with")
                Text("an accountability")
                HStack(spacing: 0.0) {
                    Text("partner are")
                    Text(" 95%")
                        .foregroundColor(Color(red: 167/255, green: 161/255, blue: 123/255))
                        .shadow(radius: 5)
                }
                Text("more likely to")
                Text("reach their goals")
            }
            .font(.system(size: 44, weight: .bold, design: .rounded))
            .padding(.horizontal, 20.0)
            .padding(.vertical, 70.0)
            Text("tap anywhere to continue")
                .font(.system(size: 15, design: .rounded))
                .flashText(duration: 2.0, hiddenDuration: 5.0)
        }
        .foregroundColor(.white)
    }
}

struct LandingPage8: View {
    var body: some View {
        VStack {
            Text("so let's get after this, together.")
                .font(.system(size: 44, weight: .bold, design: .rounded))
                .padding(.horizontal, 40.0)
                .padding(.vertical, 70.0)
            Text("tap anywhere to continue")
                .font(.system(size: 15, design: .rounded))
                .flashText(duration: 2.0, hiddenDuration: 5.0)
        }
        .foregroundColor(.white)
    }
}

struct LandingPage9: View {
    @Binding var ageGroup: String
    @Binding var currentStep: LandingPageStep

    let options = ["14–24", "25–34", "35–44", "45-54", "55+"]

    var body: some View {
        VStack(spacing: 20) {
            Text("how old are you?")
                .font(.system(size: 44, weight: .bold, design: .rounded))
                .padding(.vertical, 10)
            
            arrayToButtons(arrayName: options, outputState: $ageGroup)
            if(ageGroup != "") {
                Button("continue") {
                    withAnimation {
                        currentStep = .LP10
                    }
                }
                .font(.system(size: 20, weight: .bold, design: .rounded))
            }
        }
        .foregroundColor(.white)
    }
}

struct LandingPage10: View {
    @Binding var goalType: String
    @Binding var currentStep: LandingPageStep
    
    
    
    // * These are what will define which model we use
    let options = ["physical 💪", "mental 🧠", "career 👨‍💼", "financial 💰"]
    
    // Stops buttons from being clickable after continue is pressed
    @State public var continueFlag: Bool = false

    var body: some View {
        VStack(spacing: 20) {
            Text("what's your goal type?")
                .multilineTextAlignment(.leading)
                .padding(.vertical, 10)
                .padding(.horizontal, 10.0)
            
                
            arrayToButtons(arrayName: options, outputState: $goalType)
                .disabled(continueFlag) // Stops button functionality after continue is pressed
            
            if(goalType != "") {
                Button("continue") {
                    withAnimation {
                        continueFlag = true
                        currentStep = .LP11
                    }
                }
                .font(.system(size: 20, weight: .bold, design: .rounded))
            }
        }
        .font(.system(size: 44, weight: .bold, design: .rounded))
        .foregroundColor(.white)
    }
}

struct LandingPage11: View {
    
    @Binding var userGoal: String
    @Binding var currentStep: LandingPageStep
    public var exampleGoal: String
    
    @State public var continueFlag: Bool = false
    
    var body: some View {
        
        VStack {
            
            Text("describe your goal")
                .multilineTextAlignment(.center)
                .font(.system(size: 44, weight: .bold, design: .rounded))
                .foregroundColor(.white)
            
            TextField("\(exampleGoal)...", text: $userGoal)
                .foregroundColor(.gray)
                .font(.system(size: 25, weight: .bold, design: .rounded))
                .frame(width: 300, height: 0, alignment: .center)
                .padding(.vertical, 30)
                .padding(.bottom, 25)
                .disabled(continueFlag)

            if(userGoal != "") {
                Button("continue") {
                    withAnimation {
                        continueFlag = true
                        currentStep = .LP12
                    }
                }
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                
            }
        }
    }
    
}

struct LandingPage12: View {
    
    @Binding var goalDifficulty: Float16
    @Binding var currentStep: LandingPageStep
    @State public var continueFlag: Bool = false
    
    func numberToColor(number: Double) -> Color {
        let percentRed = number/10.0
        return Color(
            red: percentRed,
            green: 1.0 - percentRed,
            blue: 0.0
        )
    }
    
    var body: some View {
        
        let redToGreenGradient = LinearGradient(gradient: Gradient(colors: [.green, .red]), startPoint: .leading, endPoint: .trailing)
        
        VStack {
            VStack(spacing: -5) {
                HStack {
                    Text("how")
                    Text(" hard")
                        .foregroundColor(Color(red: 1.0, green: 0.0, blue: 0.0))
                        .shadow(radius: 5)
                }
                Text("is your goal?")
            }
            .foregroundColor(.white)
            .lineSpacing(200.0)
            .multilineTextAlignment(.center)
            .font(.system(size: 44, weight: .bold, design: .rounded))
            
            Text((round(goalDifficulty * 10)/10), format: .number.precision(.fractionLength(1)))
                .padding(.vertical, 10)
                .padding(.horizontal, 10.0)
                .multilineTextAlignment(.center)
                .font(.system(size: 44, weight: .bold, design: .rounded))
                .shadow(radius: 5)
                .foregroundColor(numberToColor(number: Double(goalDifficulty)))
            ZStack {
                redToGreenGradient
                    .frame(width: 200, height: 20)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                    .blur(radius: 1)
                    .opacity(1.0)
                Slider(value: $goalDifficulty, in: 0...10, step: 0.5)
                    .frame(width: 200)
                    .tint(.clear)
                    .disabled(continueFlag)
            }
            Button("continue") {
                withAnimation {
                    continueFlag = true
                    currentStep = .LP13
                }
            }
            .font(.system(size: 20, weight: .bold, design: .rounded))
            .foregroundColor(.white)
        }
    }
}

struct LandingPage13: View {
    
    @Binding var deadline: Date
    @Binding var totalDays: Int16
    @Binding var currentStep: LandingPageStep
    @State public var continueFlag: Bool = false
    
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
            VStack(alignment: .leading) {
                Text("what is your deadline")
                Text("for this goal")
            }
                .multilineTextAlignment(.leading)
                .font(.system(size: 40, weight: .bold, design: .rounded))
                .padding(.horizontal, 10)
                .foregroundColor(.white)
            DatePicker("", selection: $deadline, in: Date()..., displayedComponents: .date)
                .foregroundColor(.white)
                .labelsHidden()
                #if os(iOS)
                .datePickerStyle(.wheel)
                #endif
                .disabled(continueFlag)
                .colorScheme(.dark)
            
            if let year = timeLeftComponents.year,
               let month = timeLeftComponents.month,
               let week = timeLeftComponents.weekOfMonth,
               let day = timeLeftComponents.day,
               day != 0 || month != 0 || week != 0 || year != 0
                
            {
                
                Text("Time left: \(year)y \(month)m \(week)w \(day)d")
                    .font(.headline)
                    .foregroundColor(Color(red: 89/255, green: 89/255, blue: 89/255))
                    .multilineTextAlignment(.center)
                    .font(.system(size: 44, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .padding(.bottom, 5)
                
                Button("continue") {
                    withAnimation {
                        let timeInterval = deadline.timeIntervalSince(today) // (seconds)
                        let daysDifference = Int16(timeInterval / 86400) // Days -> Seconds (86400 seconds in a day)
                        totalDays = daysDifference
                        continueFlag = true
                        currentStep = .LP14
                    }
                }
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                
            }
        }
    }
}

struct LandingPage14: View {
    
    @Binding var extraInformation: String
    @Binding var currentStep: LandingPageStep
    
    @State public var continueFlag: Bool = false
    
    var body: some View {
        
        VStack {
            
            Text("note any past experience or relevant info")
                .multilineTextAlignment(.leading)
                .padding(.horizontal, 40)
                .font(.system(size: 44, weight: .bold, design: .rounded))
                .foregroundColor(.white)
            
            TextField("type here...", text: $extraInformation)
                .foregroundColor(.gray)
                .font(.system(size: 25, weight: .bold, design: .rounded))
                .frame(width: 300, height: 0, alignment: .center)
                .padding(.vertical, 30)
                .padding(.bottom, 25)
                .disabled(continueFlag)
            
            if(extraInformation != "") {
                Button("continue") {
                    withAnimation {
                        continueFlag = true
                        currentStep = .LP15
                    }
                }
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.white)
                
            }
        }
    }
    
}

struct LandingPage15: View {
    @Binding var coachingStyle: String
    @Binding var currentStep: LandingPageStep
    
    
    
    // * These are what will define system prompt
    let options = ["chill 😎", "neutral 🙂", "assertive 😠", "goggins 💀"]
    
    // Stops buttons from being clickable after continue is pressed
    @State public var continueFlag: Bool = false

    var body: some View {
        VStack(spacing: 20) {
            Text("what coaching style?")
                .multilineTextAlignment(.leading)
                .padding(.vertical, 10)
                .padding(.horizontal, 10.0)
            
                
            arrayToButtons(arrayName: options, outputState: $coachingStyle)
                .disabled(continueFlag) // Stops button functionality after continue is pressed
            
            if(coachingStyle != "") {
                Button("continue") {
                    withAnimation {
                        continueFlag = true
                        currentStep = .LP16
                    }
                }
                .font(.system(size: 20, weight: .bold, design: .rounded))
            }
        }
        .font(.system(size: 44, weight: .bold, design: .rounded))
        .foregroundColor(.white)
    }
}

struct LandingPage16: View {
    
    // TODO Make these variables private by moving them or doing something here
    
    // When we call the LandingPage function, swift thinks these are arguments for the functions and passes an error when it "tries" to access them
    
    @State public var loadingStart: Double = 0.0
    @State public var loadingEnd: Double = 0.0

    // String dictionary where the key is a string and value is anything
    @State public var response: Data?
    @State public var decoded_response: GoalResponse?
    @State public var decoded_response_flag: Bool = false
    @State public var errorMessage: String?
    @State public var dayIndex: Int = -1
    
    public var loadingMinimum = 0.0
    public var loadingMaximum = 100.0
    
    private let timer = Timer.publish(every: 0.005, on: .main, in: .common).autoconnect()
    
    // All data we need to prompt GPT
    @Binding var ageGroup: String
    @Binding var goalType: String
    @Binding var goal: String
    @Binding var difficulty: Float16
    @Binding var days: Int16
    @Binding var pastExperience: String
    @Binding var coachingStyle: String
    @Binding var currentStep: LandingPageStep
    
    /// Represents a single task and the overall theme for a day.
    struct Day: Codable {
        let theme: String
        let tasks: [String]
    }

    /// Represents a week, containing a theme and an array of 7 days.
    struct Week: Codable {
        let theme: String
        let days: [Day]
    }

    /// Represents the top-level response object containing the week.
    /// This is the struct that we'll pass to the decoder
    struct GoalResponse: Codable {
        let week: Week
    }
    
    /// Takes a week object and prints out the info from each day (theme & tasks)
    func weekToDayInfo(data: GoalResponse) -> [AnyView] {
        
        // Define a view array so we can append the day views
        var daysInfo: [AnyView] = []
        
        // When we loop over a JSON object, we must consider the key and the value
        // In this instance, day is the key and dayInfo is the value
        // We only care about the value
        
        // day is the first key
        // dayInfo is the first value
        for day in data.week.days {
            // Caste dayInfo as a dictionary to escape the any type
            let theme = day.theme
            let tasks = day.tasks
            daysInfo.append(
                AnyView (
                    VStack(alignment: .center) {
                        Text(theme)
                            .fixedSize(horizontal: false, vertical: true) // Allows text to wrap if an invidual word is too long to meet the padding requirement (ignores parent)
                            .font(.system(size: 30, weight: .bold, design: .rounded))
                            .padding(.bottom, 20)
                            .foregroundStyle(.white)
                            .shadow(radius: 5)
                        VStack(alignment: .leading, spacing: 20) {
                            
                            ForEach(tasks, id: \.self) { task in
                                
                                // Loop through each character in the string
                                
                                Text("-\(goldNumbersFromString(string: task))")
                                    .fixedSize(horizontal: false, vertical: true)
                                    .font(.system(size: 25, weight: .bold, design: .rounded))
                            }
                        }
                        .padding(.horizontal, 45) // Adds 20 points of space from the left edge
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .foregroundStyle(.white)
                        .transition(.opacity)
                    }

                )
            )
            
        }
        
        return daysInfo
        
    }
    
    // When the response is finished (could also use a flag for performance)
    
    var body: some View {
        
        if(!decoded_response_flag) {
            
            VStack(spacing: 30) {
                Text("creating your custom plan...")
                    .foregroundStyle(.white)
                    .padding(.bottom, 20)
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                Circle()
                    .trim(from: loadingStart, to: loadingEnd)
                    .stroke(Color(red: 167/255, green: 161/255, blue: 123/255), lineWidth: 5)
                    .frame(width: 100, height: 100)
                    .opacity(loadingEnd - (loadingStart*loadingStart*loadingStart*loadingStart*loadingStart)) // lmfao
                    .shadow(radius: 5)
            }
            /// Asynchronus task that concurrently prompts CGPT while loading screen is showing
            .task {
                do {
                    // This is where you call your async function
                    response = try await gptCall(ageGroup: ageGroup, goalType: goalType, goal: goal, difficulty: difficulty, days: days, pastExperience: pastExperience, coachingStyle: coachingStyle)
                    // JSON -> Dictionaries!
                    let decoder = JSONDecoder()
                    decoded_response = try decoder.decode(GoalResponse.self, from: response!)
                    decoded_response_flag = true
                    
                    print("Response: \(response!)")
                } catch {
                    // Handle the error, e.g., show an alert
                    errorMessage = error.localizedDescription
                }
            }
        }
        else {
            let dayArray = weekToDayInfo(data: decoded_response!)
            VStack {
                if(dayIndex == -1) {
                    VStack {
                        HStack(spacing: 0) {
                            Text("personalized plan")
                            Text(" complete!")
                                .foregroundStyle(Color(red: 167/255, green: 161/255, blue: 123/255))
                        }
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                        .padding(.bottom, 30)
                        Text("week 1 theme:")
                        Text(decoded_response!.week.theme)
                    }
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .foregroundStyle(.white)
                    .shadow(radius: 5)
                }
                else {
                    VStack(spacing: 30) {
                        Text("Day \(dayIndex + 1)")
                            .font(.system(size: 30, weight: .bold, design: .rounded))
                            .foregroundStyle(.white)
                            .shadow(radius: 5)
                        dayArray[dayIndex]
                    }
                }
                    Button("continue") {
                        withAnimation {
                            if(dayIndex == dayArray.count - 1) {
                                print("Trying to go to LP17!")
                                currentStep = .LP17
                            }
                            else {
                                dayIndex += 1
                            }
                        }
                    }
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .foregroundStyle(.white)
                    .padding(.top, 20) // Separate view than main structure
            }
        }
        

            
            
        
        
//        #if !targetEnvironment(simulator) // Stop concurrency during previews (causes crash)
//        .onReceive(timer) { _ in
//            if(loadingEnd < 1.0) {
//                loadingEnd += 0.005
//            }
//            
//            if(loadingEnd >= 1.0) {
//                loadingStart += 0.005
//            }
//            
//            if(loadingStart >= 1.0) {
//                loadingStart = 0.0
//                loadingEnd = 0.0
//            }
//        }
//        #endif
    }
}

struct LandingPage17: View {
    var body: some View {
        Text("Test")
    }
}

    
#Preview {
    LandingPageNav()
}
