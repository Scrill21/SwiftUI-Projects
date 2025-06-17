//
//  Gradients.swift
//  GuessTheFlag
//
//  Created by anthony byrd on 6/16/25.
//

import SwiftUI

struct GradientsView: View {
    //MARK: - Standard Linear Gradient
//    var body: some View {
//        // A linear gradient displays colors gradating in a straignt line
//        LinearGradient(colors: [.white, .black], startPoint: .top, endPoint: .bottom)
//            .ignoresSafeArea()
//    }
    
    //MARK: - Gradient Stop
//    var body: some View {
//        // A gradient stop specifies how far along the gradient a color appear
//        LinearGradient(stops: [
//            Gradient.Stop(color: .white, location: 0.45),
//            Gradient.Stop(color: .black, location: 0.55)
//        ], startPoint: .top, endPoint: .bottom)
//            .ignoresSafeArea()
//        
//        // Replacing Gradient.Stop with .init for a shorter syntax
////        LinearGradient(stops: [
////            .init(color: .white, location: 0.45),
////            .init(color: .black, location: 0.55)
////        ], startPoint: .top, endPoint: .bottom)
////            .ignoresSafeArea()
//
//    }
    
    //MARK: - Radial Gradient
//    var body: some View {
//        RadialGradient(colors: [.mint, .pink], center: .center, startRadius: 20, endRadius: 200)
//            .ignoresSafeArea()
//    }
    
    //MARK: - Angular Gradient
//    var body: some View {
//        AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center)
//            .ignoresSafeArea()
//    }
    
    //MARK: - Gradient modifier
    var body: some View {
        // The gradient modifier will add a subtle to a specified color
        Text("Your content")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .foregroundStyle(.white)
            .background(.indigo.gradient)
    }
}

#Preview {
    GradientsView()
}
