//
//  GeometryReaderDeepDive.swift
//  LayoutAndGeometry
//
//  Created by anthony byrd on 11/22/25.
//

import SwiftUI

struct GeometryReaderDeepDive: View {
    var body: some View {
        coordinateSpaces
    }
    
    var dynamicLayout: some View {
        VStack {
            GeometryReader { proxy in
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .frame(width: proxy.size.width * 0.9)
                    .background(.red)
            }
            .background(.indigo)
            
            Text("More Text")
                .background(.blue)
        }
    }
    
    var coordinateSpaces: some View {
        OuterView()
            .background(.orange)
            .coordinateSpace(name: "Custom")
    }
}

struct OuterView: View {
    var body: some View {
        VStack {
            Text("Top")
            
            InnerView()
                .background(.green)
            
            Text("Bottom")
        }
    }
}

struct InnerView: View {
    var body: some View {
        HStack {
            Text("Left")
            
            GeometryReader { proxy in
                Text("Center")
                    .background(.blue)
                    .onTapGesture {
                        print("Global center:\nx: \(proxy.frame(in: .global).midX) y: \(proxy.frame(in: .global).midY)\n")
                        print("Custom center:\nx: \(proxy.frame(in: .named("Custom")).midX) y: \(proxy.frame(in: .named("Custom")).midY)\n")
                        print("Local center:\nx: \(proxy.frame(in: .local).midX) y: \(proxy.frame(in: .local).midY)")
                    }
            }
            .background(.red)
            
            Text("Right")
        }
    }
}

#Preview {
    GeometryReaderDeepDive()
}
