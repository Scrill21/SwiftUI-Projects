//
//  AccessingLocalStorage.swift
//  iExpense
//
//  Created by anthony byrd on 6/25/25.
//

import SwiftUI

struct AccessingLocalStorage: View {
    var body: some View {
        UserDefaultsExample()
        AppStorageExample()
    }
}

struct UserDefaultsExample: View {
    @State private var tapCount = 0
    
    var body: some View {
        Button("Tap Count: \(tapCount)") {
            tapCount += 1
            
            UserDefaults.standard.set(tapCount, forKey: "Tap")
        }
        .frame(width: 300, height: 44)
        .background(.purple.gradient)
        .foregroundStyle(.white)
        .clipShape(.rect(cornerRadius: 10))
        .onAppear {
            tapCount = UserDefaults.standard.integer(forKey: "Tap") // default value of 0 will be returned if no key is found
        }
    }
}

struct AppStorageExample: View {
    @AppStorage("tapCount") private var tapCount = 0
    
    var body: some View {
        Button("Tap Count: \(tapCount)") {
            tapCount += 1
        }
        .frame(width: 300, height: 44)
        .background(.mint.gradient)
        .foregroundStyle(.white)
        .clipShape(.rect(cornerRadius: 10))
    }
}

#Preview {
    AccessingLocalStorage()
}
