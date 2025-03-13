//
//  Question.swift
//  CyQuiz
//
//  Created by Anthony Phan on 3/13/25.
//
import SwiftUI
import Foundation

struct Question {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
}
