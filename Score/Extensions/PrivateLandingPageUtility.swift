//
//  PrivateLandingPageUtility.swift
//  Score
//
//  Created by Ethan Harbinger on 7/3/25.
//

import Foundation
import SwiftUI

struct Post: Codable, Identifiable {
    let id: Int
    let title: String
    let body: String
}

/// Returns the response in a Data object which is in JSON format
func gptCall(ageGroup: String, goalType: String, goal: String, difficulty: Float16, days: Int16, pastExperience: String, coachingStyle: String) async throws -> Data {
    
    // Define a custom error we will throw at the end of this class
    enum GptCallError: Error {
        case dataFetchFailed(underlyingError: Error)
    }
    

    func fetchPosts() async throws -> Data {
        
        // Converts HTTP URL into Swift URL object format
        guard let url = URL(string: "https://call-gpt-988090023749.us-east4.run.app") else {
            throw URLError(.badURL)
        }
        
        var request = URLRequest(url: url)
        
        print("Created request object")
        
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let parameters = [
            "ageGroup": ageGroup,
            "goalType": goalType,
            "goal": goal,
            "difficulty": Double(difficulty),
            "days": Int(days),
            "pastExperience": pastExperience,
            "coachingStyle": coachingStyle
        ] as [String : Any]
        
        request.httpBody = try? JSONSerialization.data(withJSONObject: parameters)

        print("Sending Request: \(request)")
    
        // Data is the raw binary response from the file and response is metadata is about the response
        let (data, response) = try await URLSession.shared.data(for: request) // TODO: Make this dataTask instead of data and make it asynchronus
    
        print("Data and response gathered: \(data); \(response)")
        
        // Turns the response (which is a json format string) into a swift object (which is a string dictionary)
        
        // let jsonResponse = try JSONSerialization.jsonObject(with: data) as? String

        // print("Returning response string: \(jsonResponse!)")
        
        return data
        
    }
    
    do {
        return try await fetchPosts()
    } catch {
        throw GptCallError.dataFetchFailed(underlyingError: error)
    }
    
}
