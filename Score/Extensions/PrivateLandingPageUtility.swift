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
func gptCall() async throws -> Data {
    
    print("Entered GPT call function")
    
    
    // Define a custom error we will throw at the end of this class
    enum GptCallError: Error {
        case dataFetchFailed(underlyingError: Error)
    }
    

    func fetchPosts() async throws -> Data {
        
        print("Prompting CGPT")
        
        // Converts HTTP URL into Swift URL object format
        guard let url = URL(string: "https://call-gpt-988090023749.us-east4.run.app") else {
            throw URLError(.badURL)
        }
        
        print("Prompted CGPT")
    
        // Data is the raw binary response from the file and response is metadata is about the response
        let (data, response) = try await URLSession.shared.data(from: url)
    
        print("Data and response gathered: \(data);;; \(response)")
        
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
