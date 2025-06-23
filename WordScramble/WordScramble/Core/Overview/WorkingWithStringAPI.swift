//
//  WorkingWithStringAPI.swift
//  WordScramble
//
//  Created by anthony byrd on 6/22/25.
//

import SwiftUI

struct WorkingWithStringAPI: View {
    var body: some View {
        Button {
            spellCheckingStrings()
        } label: {
            Text("Tap to run function")
                .foregroundStyle(.white)
        }
        .frame(width: 200, height: 44)
        .background(.blue.gradient)
        .clipShape(.rect(cornerRadius: 5))
    }
}

extension WorkingWithStringAPI {
    func separatingStrings() {
        let input = "a b c"
        let letters = input.components(separatedBy: " ")
        
        print(letters)
    }
    
    func separatingMutliLineStrings() {
        let input = """
            a
            b
            c
            """
        
        let letters = input.components(separatedBy: "\n")
        
        if let randomLetter = letters.randomElement() {
            print(randomLetter)
        }
    }
    
    func trimmingStrings() {
        let input = "h e l l o"
        let trimmedInput = input.trimmingCharacters(in: .whitespacesAndNewlines)
        
        print(trimmedInput)
    }
    
    func spellCheckingStrings() {
        let word = "Swift"
        let checker = UITextChecker()
        
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        let allGood = misspelledRange.location == NSNotFound
        
        print(allGood)
    }
}

#Preview {
    WorkingWithStringAPI()
}
