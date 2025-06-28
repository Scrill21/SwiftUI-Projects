//
//  AstronautDetailsView.swift
//  Moonshot
//
//  Created by anthony byrd on 6/27/25.
//

import SwiftUI

struct AstronautDetailsView: View {
    let astronaut: Astronaut
    
    var body: some View {
        ScrollView {
            VStack {
                Image(astronaut.id)
                    .resizable()
                    .scaledToFit()
                
                Text(astronaut.description)
                    .padding()
            }
        }
        .background(.darkBackground)
        .navigationTitle(astronaut.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let astronauts: [String: Astronaut] = Bundle.main.decode("astronauts.json")
    let astronaut = astronauts["grissom"]!
    
    AstronautDetailsView(astronaut: astronaut)
        .preferredColorScheme(.dark)
}
