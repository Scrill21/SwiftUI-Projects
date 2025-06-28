//
//  ProgrammaticNavigation.swift
//  NavigationStackGuide
//
//  Created by anthony byrd on 6/28/25.
//

import SwiftUI

struct ProgrammaticNavigation: View {
    @State private var path = [Int]()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                Button("Show 32") {
                    path = [32]
                }
                .frame(width: 300, height: 44)
                .foregroundStyle(.white)
                .background(.blue.gradient)
                .clipShape(.rect(cornerRadius: 10))
                
                Button("Show 64") {
                    path.append(64)
                }
                .frame(width: 300, height: 44)
                .foregroundStyle(.white)
                .background(.pink.gradient)
                .clipShape(.rect(cornerRadius: 10))
                
                Button("Show 32 and 64") {
                    path = [32, 64]
                }
                .frame(width: 300, height: 44)
                .foregroundStyle(.white)
                .background(.orange.gradient)
                .clipShape(.rect(cornerRadius: 10))
            }
            .navigationDestination(for: Int.self) { selection in
                Text("You selected \(selection)")
            }
        }
    }
}

#Preview {
    ProgrammaticNavigation()
}
