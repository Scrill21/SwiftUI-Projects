//
//  BreakingDownComplexViews.swift
//  ViewsAndModifiers
//
//  Created by anthony byrd on 6/18/25.
//

import SwiftUI

struct BreakingDownComplexViews: View {
    var body: some View {
        VStack(spacing: 10) {
            CapsuleText(text: "First")
                .foregroundStyle(.white)
            
            CapsuleText(text: "Second")
                .foregroundStyle(.yellow)
        }
    }
}

struct CapsuleText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            .background(.blue)
            .clipShape(.capsule)
    }
}

#Preview {
    BreakingDownComplexViews()
}
