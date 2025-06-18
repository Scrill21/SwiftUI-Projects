//
//  ButtonsView.swift
//  GuessTheFlag
//
//  Created by anthony byrd on 6/17/25.
//

import SwiftUI

struct ButtonsView: View {
    //MARK: - Standard Button
//    var body: some View {
//        Button("Delete selection", action: executeDelete)
//    }
    
    //MARK: - Button Role
//    var body: some View {
//        Button("Delete selection", role: .destructive) {
//            executeDelete()
//        }
//    }
    
    //MARK: - Default Button Styles
//    var body: some View {
//        VStack {
//            Button("Button 1") { }
//                .buttonStyle(.bordered)
//            
//            Button("Button 2", role: .destructive) { }
//                .buttonStyle(.bordered)
//            
//            Button("Button 3") { }
//                .buttonStyle(.borderedProminent)
//                .tint(.indigo)
//            
//            Button("Button 4", role: .destructive) { }
//                .buttonStyle(.borderedProminent)
//            
//            Button("Button 5") { }
//                .buttonStyle(.borderless)
//            
//            Button("Button 6", role: .destructive) { }
//                .buttonStyle(.borderless)
//            
//            Button("Button 7") { }
//                .buttonStyle(.plain)
//        }
//    }
    
    //MARK: - Custom Buttons
//    var body: some View {
//        Button {
//            print("Button was tapped")
//        } label: {
//            Text("Tap me!")
//                .padding()
//                .foregroundStyle(.white)
//                .background(.pink.gradient)
//        }
//    }
    
    //MARK: - Images
//    var body: some View {
//        // Displaying image from Bundle / Assets
////        Image("singapore")
////            .resizable()
//        
//        // Decorative tells voice over (screen reader) to ignore the image
////        Image(decorative: "singapore")
////            .resizable()
////            .ignoresSafeArea()
//        
//        // Displaying SF Symbols
//        Image(systemName: "pencil.circle")
//            .foregroundStyle(.blue)
//            .font(.largeTitle)
//    }
    
    //MARK: - Custom Buttons with Images and Text
    var body: some View {
        // Standard Button initialized with text and image
//        Button("Edit", systemImage: "pencil") {
//            print("Edit button was tapped")
//        }
        
        // Custom Button with image and text
//        Button {
//            print("Edit button was tapped!")
//        } label: {
//            HStack {
//                Image(systemName: "pencil.circle")
//                
//                Text("Edit")
//            }
//        }
        
        // Custom Button using a Label View - note: Label View will adapt to display the just the label, image or both
        Button {
            print("Edit button was tapped.")
        } label: {
            Label("Edit", systemImage: "pencil")
                .padding()
                .foregroundStyle(.white)
                .background(.red)
        }
    }
}

extension ButtonsView {
    func executeDelete() {
        print("Now deleting..")
    }
}

#Preview {
    ButtonsView()
}
