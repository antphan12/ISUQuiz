//
//  ContentView.swift
//  CyQuiz
//
//  Created by Anthony Phan on 3/10/25.
//

import SwiftUI

struct ContentView: View {
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
                Text("What year what Iowa State University founded?")
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                Spacer()
                VStack{
                    Button(action: {
                        print("Tapped on Choice 1")
                    }, label: {
                        Text("1845")
                            .font(.title)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(accentColor, width: 5)
                    })
                    
                    Button(action: {
                        print("Tapped on Choice 2")
                    }, label: {
                        Text("1858")
                            .font(.title)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(accentColor, width: 5)
                    })
                    
                    Button(action: {
                        print("Tapped on Choice 3")
                    }, label: {
                        Text("1869")
                            .font(.title)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(accentColor, width: 5)
                    })
                    
                    Button(action: {
                        print("Tapped on Choice 4")
                    }, label: {
                        Text("1876")
                            .font(.title)
                            .bold()
                            .multilineTextAlignment(.center)
                            .padding()
                            .border(accentColor, width: 5)
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
