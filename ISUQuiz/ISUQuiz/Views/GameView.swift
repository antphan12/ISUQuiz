//
//  ContentView.swift
//  ISUQuiz
//
//  Created by Anthony Phan on 3/21/25.
//

import SwiftUI

struct GameView: View {

    // Instance of Question, base set up
    let question = Question(
        questionText: "What year was Iowa State University founded?",
        possibleAnswers: ["1845", "1858", "1869", "1876"],
        correctAnswerIndex: 1
)

    // Colors of the app
    @State var mainColor = GameColor.mainColor

    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()
            VStack {
                Text("1 / 10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                    .foregroundColor(.white)
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)

                // Change from HStack to VStack for looks
                VStack{
                    ForEach(0..<question.possibleAnswers.count) { answerIndex in
                        Button(
                            action: {
                                print("Tapped on option with the text \(question.possibleAnswers[answerIndex])")
                                mainColor = answerIndex == question.correctAnswerIndex ? .green : .black
                            },
                            label: {
                                ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                            })
                    }
                }
                .foregroundColor(.white)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
