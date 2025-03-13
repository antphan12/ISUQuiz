//
//  ContentView.swift
//  CyQuiz
//
//  Created by Anthony Phan on 3/10/25.
//

import SwiftUI

struct ContentView: View {
    
    // Instance of Question, base set up
    let question = Question(
        questionText: "What year was Iowa State University founded?",
        possibleAnswers: ["1845", "1858", "1869", "1876"],
        correctAnswerIndex: 1
    )
    
    
    // Colors of the app
   @State var mainColor = Color(red: 200/255, green: 16/255, blue: 46/255)
    var accentColor = Color(red: 241/255, green: 190/255, blue: 72/255)
    
    var body: some View {
        ZStack{
            mainColor.ignoresSafeArea()
            VStack{
                Text("1 / 10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                Spacer()
                
                // Change from HStack to VStack for looks
                VStack {
                    ForEach(0..<question.possibleAnswers.count) {answerIndex in
                        Button(action: {
                            print("Tapped on option with the text \(question.possibleAnswers[answerIndex])")
                            mainColor = answerIndex == question.correctAnswerIndex ? .green : .black
                        }, label: {
                            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                        })
                    }
                    Spacer()
                }
            }
            .foregroundColor(.white)
        }
    }
    
    struct Preview: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
