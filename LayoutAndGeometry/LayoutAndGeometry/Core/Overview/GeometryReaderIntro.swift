//
//  GeometryReaderIntro.swift
//  LayoutAndGeometry
//
//  Created by anthony byrd on 11/22/25.
//

import SwiftUI

struct GeometryReaderIntro: View {
    var body: some View {
        geometryReaderExample
    }
    
    /// GeometryReader will layout the containing View in its top left corner
    var geometryReaderExample: some View {
        GeometryReader { proxy in
            Image(.itadori)
                .resizable()
                .scaledToFit()
                .frame(width: proxy.size.width * 0.8)
        }
    }
    
    /// The limitation to using the .containerRelativeFrame modifier is that it does not recognize HStack, VStack and ZStack as containers prior to iOS 17+
    var containerRelativeFrameExample: some View {
        HStack {
            Text("IMPORTANT")
                .frame(width: 200)
                .background(.blue)
            
            Image(.example)
                .resizable()
                .scaledToFit()
                .containerRelativeFrame(.horizontal) { size, axis in
                    size * 0.8
                }
        }
    }
    
    var centeringAViewInGeometryReaderExample: some View {
        HStack {
            Text("Itadori Yuji")
                .frame(width: 200)
                .background(.blue)
            
            GeometryReader { proxy in
                Image(.itadori)
                    .resizable()
                    .scaledToFit()
                    .frame(width: proxy.size.width * 0.8)
                    .frame(width: proxy.size.width, height: proxy.size.height)
            }
        }
    }
}

#Preview {
    GeometryReaderIntro()
}
