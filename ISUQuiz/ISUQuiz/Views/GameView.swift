//
//  ContentView.swift
//  ISUQuiz
//
//  Created by Anthony Phan on 3/21/25.
//

import SwiftUI

struct GameView: View {

    // Colors of the app
    @StateObject var viewModel = GameViewModel()

    var body: some View {
        ZStack {
            GameColor.mainColor.ignoresSafeArea()
            VStack {
                // Change from HStack to VStack for looks
                VStack{
                    Text(viewModel.questionProgressText)
                        .font(.callout)
                        .multilineTextAlignment(.leading)
                        .padding()
                        .foregroundColor(.white)
                    QuestionView(question: viewModel.currentQuestion)
                }
                .foregroundColor(.white)
                .navigationBarHidden(true)
                .environmentObject(viewModel)
            }
        }
        .background(NavigationLink(destination: ScoreView(viewModel: ScoreViewModel(correctGuesses: viewModel.correctGuesses, incorrectGuesses: viewModel.incorrectGuesses)),
                                   isActive: .constant(viewModel.gameIsOver),
                                   label: { EmptyView() } )
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
