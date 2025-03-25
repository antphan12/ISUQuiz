//
//  ScoreViewModel.swift
//  ISUQuiz
//
//  Created by Anthony Phan on 3/25/25.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
