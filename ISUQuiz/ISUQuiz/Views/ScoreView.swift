//
//  ScoreView.swift
//  ISUQuiz
//
//  Created by Anthony Phan on 3/25/25.
//

import SwiftUI

struct ScoreView: View {
    
    let viewModel: ScoreViewModel
    var body: some View {
      ZStack {
          GameColor.mainColor.ignoresSafeArea()
        VStack {
          Spacer()
          Text("Final Score:")
            .font(.body)
            Text("\(viewModel.percentage)%")
            .font(.system(size: 50))
            .bold()
            .padding()
          Spacer()
          VStack {
              Text("\(viewModel.correctGuesses) ✅")
              Text("\(viewModel.incorrectGuesses) ❌")
          }.font(.system(size: 30))
          Spacer()
          NavigationLink(
            destination: GameView(),
            label: {
              BottomTextView(str: "Re-take Quiz")
            })
        }
        .foregroundColor(.white)
        .navigationBarHidden(true)
      }
    }
}

struct ScoreView_Previews: PreviewProvider {
    static var previews: some View {
        ScoreView(viewModel: ScoreViewModel(correctGuesses: 8, incorrectGuesses: 2))
    }
}
