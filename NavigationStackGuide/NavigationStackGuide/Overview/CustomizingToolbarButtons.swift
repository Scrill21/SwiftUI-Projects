//
//  CustomizingToolbarButtons.swift
//  NavigationStackGuide
//
//  Created by anthony byrd on 6/28/25.
//

import SwiftUI

struct CustomizingToolbarButtons: View {
    var body: some View {
        NavigationStack {
            List(1..<21) {
                Text("\($0)")
            }
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Tap me") {
                        
                    }
                }
                
                ToolbarItemGroup(placement: .topBarLeading) {
                    Button("Share") {
                        
                    }
                    
                    Button("Save") {
                        
                    }
                }
            }
//            .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    CustomizingToolbarButtons()
}
