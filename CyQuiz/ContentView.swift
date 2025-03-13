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
    let mainColor = Color(red: 200/255, green: 16/255, blue: 46/255)
    let accentColor = Color(red: 241/255, green: 190/255, blue: 72/255)
    
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
                VStack{
                    Button(action: {
                        print("Tapped on Choice 1, Wrong")
                    }, label: {
                        // Choice: 1845
                        ChoiceTextView(choiceText: question.possibleAnswers[0])
                    })
                    
                    Button(action: {
                        print("Tapped on Choice 2, Correct")
                    }, label: {
                        // Choice: 1858
                        ChoiceTextView(choiceText: question.possibleAnswers[1])
                    })
                    
                    Button(action: {
                        print("Tapped on Choice 3, Wrong")
                    }, label: {
                        // Choice: 1869
                        ChoiceTextView(choiceText: question.possibleAnswers[2])
                    })
                    
                    Button(action: {
                        print("Tapped on Choice 4, Wrong")
                    }, label: {
                        // Choice: 1876
                        ChoiceTextView(choiceText: question.possibleAnswers[3])
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
