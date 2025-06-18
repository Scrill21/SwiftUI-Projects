//
//  StacksBackgroundAndColors.swift
//  GuessTheFlag
//
//  Created by anthony byrd on 6/17/25.
//

import SwiftUI

struct StacksBackgroundAndColors: View {
    //MARK: - Applying the frame modifier
//    var body: some View {
//        ZStack {
//            Color.red
//                .frame(width: 200, height: 200)
//            
//            // Dynamic width modifier
////            Color.mint
////                .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
//
//            Text("Your content")
//        }
//    }
    
    //MARK: - Colors
//    var body: some View {
//        ZStack {
//            // Semantic Colors describes the purpose of a color
//            Color.secondary
//                .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
//            
//            // Creating a Color
////            Color(red: 1, green: 0.8, blue: 0)
////                .frame(minWidth: 200, maxWidth: .infinity, maxHeight: 200)
//            
//            Text("Your content")
//        }
//        .background(.blue) // Remove the background to view the secondary color
//    }
    
    //MARK: - Background, IgnoreSafeArea and Material modifiers
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Color.red
                Color.blue
            }
            
            Text("Your content")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    StacksBackgroundAndColors()
}
