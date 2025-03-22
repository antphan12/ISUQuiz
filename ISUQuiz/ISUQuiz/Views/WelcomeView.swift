//
//  WelcomeView.swift
//  ISUQuiz
//
//  Created by Anthony Phan on 3/21/25.
//

import SwiftUI

struct WelcomeView: View {
    let mainColor = Color(red: 200 / 255, green: 16 / 255, blue: 46 / 255)
    let accentColor = Color(red: 241 / 255, green: 190 / 255, blue: 72 / 255)
    
    var body: some View {
        NavigationView {
            ZStack {
                mainColor.ignoresSafeArea()
                VStack {
                    Spacer()
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Test your knowledge about Iowa State University")
                            .font(.largeTitle)
                            .bold()
                            .multilineTextAlignment(.leading)
                            .padding()
                    }
                    Spacer()
                    NavigationLink(destination: GameView(),
                                   label: {
                        HStack {
                            Spacer()
                            Text("Start Quiz")
                                .font(.body)
                                .bold()
                                .padding()
                            Spacer()
                        } .background(accentColor)
                    })
                }
                .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    WelcomeView()
}
