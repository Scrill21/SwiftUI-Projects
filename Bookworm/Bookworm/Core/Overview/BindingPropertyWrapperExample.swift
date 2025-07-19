//
//  BindingPropertyWrapperExample.swift
//  Bookworm
//
//  Created by anthony byrd on 7/3/25.
//

/*:
 ### @Bindable Property Wrapper
 - **Purpose**: Is used to create bindings to **entire observable objects** (usually conforming to `Observable` protocol).
 - **Use case**: When passing a `Observable` model(e.g., view model) to a view, and you want to create bindings to its individual properties.
 - Note: It allows granular two-way binding **to the properties of an observable object**.
 
 ### @Binding Property Wrapper
 - **Purpose**: Used to pass a binding from a parent view to a child view.
 - **Use case**: When you want a child view to *8read and write** to a value owned by the parent.
 - Note: `@Binding` **does not own** the value: it just provides a reference to it.
 */

import SwiftUI

struct BindingPropertyWrapperExample: View {
    @State private var rememberMe = false
    
    var body: some View {
        VStack {
            PushButton(title: "Remember Me", isOn: $rememberMe)
            Text(rememberMe ? "On" : "Off")
        }
    }
}

struct PushButton: View {
    let title: String
    @Binding var isOn: Bool
    
    var onColors = [Color.red, Color.yellow]
    var offColors = [Color(white: 0.6), Color(white: 0.4)]
    
    var body: some View {
        Button(title) {
            isOn.toggle()
        }
        .frame(width: 200, height: 44)
        .background(LinearGradient(colors: isOn ? onColors : offColors, startPoint: .top, endPoint: .bottom))
        .foregroundStyle(.white)
        .clipShape(.rect(cornerRadius: 10))
        .shadow(radius: isOn ? 0 : 5)
    }
}

#Preview {
    BindingPropertyWrapperExample()
}
