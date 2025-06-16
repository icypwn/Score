//
//  Text+Flashing.swift
//  Score
//
//  Created by Ethan Harbinger on 6/16/25.
//

import SwiftUI
import Foundation

struct TextFlasher: ViewModifier {
    
    let duration: Double
    let hiddenDuration: Double
    @State private var isVisible = false
    
    func body(content: Content) -> some View {
        content
            .opacity(isVisible ? 1.0 : 0.0)
            .onAppear {
                Task {
                    try? await Task.sleep(for: .seconds(hiddenDuration))
                    withAnimation(
                        .easeInOut(duration: duration)
                            .repeatForever(autoreverses: true)
                    ) {
                        isVisible = true
                    }
                }
            }
    }

}

/// Makes text flash
///
/// Parameter duration: The duration in seconds it takes for the opacity to fade in/out
/// Parameter hiddenDuration: The duration in seconds the text is invisible at the start for before appearing
/// Returns: The view with the text effect applied
extension View {
    func flashText(duration: Double = 1.0, hiddenDuration: Double = 0.0) -> some View {
        modifier(TextFlasher(duration: duration, hiddenDuration: hiddenDuration))
    }
}


