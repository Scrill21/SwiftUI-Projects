//
//  AlignmentIntro.swift
//  LayoutAndGeometry
//
//  Created by anthony byrd on 11/19/25.
//

import SwiftUI

struct AlignmentIntro: View {
    var body: some View {
        Text("Live long and prosper")
            .frame(width: 300, height: 300, alignment: .topLeading)
        
        stackAlignment
    }
    
    var stackAlignment: some View {
        HStack(alignment: .top) {
            Text("Live")
                .font(.caption)
            
            Text("long")
            
            Text("and")
                .font(.title)
            
            Text("prosper")
                .font(.largeTitle)
        }
    }
}

#Preview {
    AlignmentIntro()
}
