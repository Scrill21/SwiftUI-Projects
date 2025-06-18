//
//  EnvironmentModifiers.swift
//  ViewsAndModifiers
//
//  Created by anthony byrd on 6/18/25.
//

import SwiftUI

struct EnvironmentModifiers: View {
    //MARK: - Environment modifiers are applied to all childern in a container.
//    var body: some View {
//        VStack {
//            Text("Gryfindor")
//                .font(.largeTitle) // child modifiers will often override environment modifiers
//            Text("Hufflepuff")
//            Text("Ravenclaw")
//            Text("Slytherin")
//        }
//        .font(.title)
//    }
    
    //MARK: - Example where a child modifier will not override the environment modifier
    var body: some View {
        VStack {
            Text("Gryfindor")
                .blur(radius: 0) // child modifier does not override the environment modifier in this case
            Text("Hufflepuff")
            Text("Ravenclaw")
            Text("Slytherin")
        }
        .blur(radius: 5)
    }
}

#Preview {
    EnvironmentModifiers()
}
