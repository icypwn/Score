//
//  ContentView.swift
//  Score
//
//  Created by Ethan Harbinger on 6/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Set a new goal", destination: SetNewGoal())
        }
        
        .padding()
    }
}

#Preview {
    ContentView()
}
