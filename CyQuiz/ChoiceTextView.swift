//
//  ChoiceTextView.swift
//  CyQuiz
//
//  Created by Anthony Phan on 3/14/25.
//

import SwiftUI

struct ChoiceTextView: View {
    let choiceText: String
    
    var body: some View {
        Text(choiceText)
            .font(.body)
            .bold()
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color(red: 241 / 255, green: 190 / 255, blue: 72 / 255), lineWidth: 3)
                    .foregroundColor(.accentColor)
            )
            .padding(.horizontal, 20)
            .foregroundColor(.white)
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(red: 200 / 255, green: 16 / 255, blue: 46 / 255).ignoresSafeArea()
            ChoiceTextView(choiceText: "Sample Answer")
                .foregroundColor(.white)
        }
    }
}
