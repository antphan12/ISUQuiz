//
//  ChoiceTextView.swift
//  CyQuiz
//
//  Created by Anthony Phan on 3/13/25.
//

import SwiftUI
import Foundation

struct ChoiceTextView: View {
    let choiceText: String
    let accentColor = Color(red: 241/255, green: 190/255, blue: 72/255)
    
    var body: some View {
    Text(choiceText)
            .font(.title)
            .bold()
            .multilineTextAlignment(.center)
            .padding()
            .border(accentColor, width: 5)
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice Text")
    }
}
