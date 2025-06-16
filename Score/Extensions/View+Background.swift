//
//  Text+Flashing.swift
//  Score
//
//  Created by Ethan Harbinger on 6/15/25.
//

import SwiftUI
import Foundation

struct BackgroundModifier: ViewModifier {
    let imageName: String
    
    func body(content: Content) -> some View {
        ZStack {
            Image(imageName)
                .scaledToFill()
                .ignoresSafeArea(.all)
            
            content
        }
    }
}

/// Applies a full screen background to any view
///
/// It will fill the entire screen (up to an iPhone 16 pro max) and go beyond safe zones
///
/// Parameter imageName: The background image from your assets folder
/// Returns: The view with the full screen background applied
extension View {
    func customBackground(_ imageName: String) -> some View {
        modifier(BackgroundModifier(imageName: imageName))
    }
}
