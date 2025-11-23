//
//  AlignmentIntro.swift
//  LayoutAndGeometry
//
//  Created by anthony byrd on 11/19/25.
//

import SwiftUI

struct AlignmentIntro: View {
    var body: some View {
        alignmentGuide
    }
    
    var basicAlignment: some View {
        Text("Live long and prosper")
            .frame(width: 300, height: 300, alignment: .topLeading)
    }
    
    var stackAlignment: some View {
        HStack(alignment: .lastTextBaseline) {
            Text("Live")
                .font(.caption)
            
            Text("long")
            
            Text("and")
                .font(.title)
            
            Text("prosper")
                .font(.largeTitle)
        }
    }
    
    var alignmentGuide: some View {
        VStack(alignment: .leading) {
            Text("Hello, world!")
                .alignmentGuide(.leading) { dimension in
                    dimension[.trailing]
                }
            Text("This is a longer line of text")
        }
        .background(.red)
        .frame(width: 400, height: 400)
        .background(.blue)
    }
    
    var customAlignmentGuide: some View {
        VStack(alignment: .leading) {
            ForEach(0..<10) { position in
                Text("Number \(position)")
                    .alignmentGuide(.leading) { _ in
                        Double(position) * -10
                    }
            }
        }
        .background(.red)
        .frame(width: 400, height: 400)
        .background(.blue)
    }
}

#Preview {
    AlignmentIntro()
}
