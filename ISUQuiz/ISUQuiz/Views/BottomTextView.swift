//
//  BottomTextView.swift
//  ISUQuiz
//
//  Created by Anthony Phan on 3/21/25.
//

import SwiftUI

struct BottomTextView: View {
    let str: String
    
    var body: some View {
            HStack {
                Spacer()
                Text(str)
                    .font(.body)
                    .bold()
                    .padding()
                Spacer()
            }.background(GameColor.accentColor)
        }
}

#Preview {
    BottomTextView(str: "Test")
}
