//
//  DecodingJSONExample.swift
//  CupcakeCorner
//
//  Created by anthony byrd on 6/29/25.
//

import SwiftUI

struct Response: Codable {
    var results: [Result]
}

struct Result: Codable {
    var trackId: Int
    var trackName: String
    var collectionName: String
}

struct DecodingJSONExample: View {
    @State private var results = [Result]()
    
    var body: some View {
        List(results, id: \.trackId) { item in
            VStack(alignment: .leading) {
                Text(item.trackName)
                    .font(.headline)
                
                Text(item.collectionName)
            }
        }
        .task {
            try? await loadData()
        }
    }
}

extension DecodingJSONExample {
    func loadData() async throws {
        guard let url = URL(string: "https://itunes.apple.com/search?term=beyonce&entity=song") else {
            print("Invalid URL")
            return
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse else {
            print("Response was received")
            return
        }
        
        guard httpResponse.statusCode == 200 else {
            print("Received status code: \(httpResponse.statusCode)")
            return
        }
        
        do {
            let response = try JSONDecoder().decode(Response.self, from: data)
            results = response.results
        } catch {
            print("Unable to decode JSON: \(error.localizedDescription)")
        }
    }
}

#Preview {
    DecodingJSONExample()
}
