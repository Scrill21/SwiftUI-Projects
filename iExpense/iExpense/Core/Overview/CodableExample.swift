//
//  CodableExample.swift
//  iExpense
//
//  Created by anthony byrd on 6/25/25.
//

import SwiftUI

fileprivate struct User: Codable {
    let firstName: String
    let lastName: String
}

struct CodableExample: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @AppStorage("savedUser") private var savedUser = false
    @State private var user = User(firstName: "Beyonce", lastName: "Knowles")
    
    var body: some View {
        VStack {
            Spacer()
            
            Text(savedUser ? "Hello, \(firstName) \(lastName)" : "Greetings")
                .font(.largeTitle)
                .padding()
            
            Spacer()
        
            Button("Save User") {
                let encoder = JSONEncoder()
                
                if let data = try? encoder.encode(user) {
                    UserDefaults.standard.set(data, forKey: "UserData")
                    savedUser = true
                }
            }
            .frame(width: 300, height: 44)
            .background(.blue.gradient)
            .foregroundStyle(.white)
            .clipShape(.rect(cornerRadius: 10))
        }
        .onAppear {
            if let data = UserDefaults.standard.data(forKey: "UserData") {
                do {
                    let user = try JSONDecoder().decode(User.self, from: data)
                    firstName = user.firstName
                    lastName = user.lastName
                } catch {
                    print("DEBUG: Unable to decode user from data")
                }
            }
        }
        .onChange(of: savedUser) {
            if let data = UserDefaults.standard.data(forKey: "UserData") {
                do {
                    let user = try JSONDecoder().decode(User.self, from: data)
                    firstName = user.firstName
                    lastName = user.lastName
                } catch {
                    print("DEBUG: Unable to decode user from data")
                }
            }
        }
    }
}

#Preview {
    CodableExample()
}
