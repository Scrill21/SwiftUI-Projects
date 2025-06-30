//
//  FormViewExample.swift
//  CupcakeCorner
//
//  Created by anthony byrd on 6/30/25.
//

import SwiftUI

struct FormViewExample: View {
    @State private var username = ""
    @State private var email = ""
    
    var disabledForm: Bool {
        username.count < 5 || email.count < 5
    }
    
    var body: some View {
        Form {
            Section {
                TextField("Username", text: $username)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                
                TextField("Email", text: $email)
                    .textInputAutocapitalization(.never)
            }
            
            Section {
                Button("Create account") {
                    print("Creating account")
                }
            }
            .disabled(disabledForm)
        }
    }
}

#Preview {
    FormViewExample()
}
