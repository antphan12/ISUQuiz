//
//  Question.swift
//  ISUQuiz
//
//  Created by Anthony Phan on 3/21/25.
//

import Foundation

struct Question: Hashable {
    let questionText: String
    let possibleAnswers: [String]
    let correctAnswerIndex: Int
    
    static var allQuestions = [
        Question(questionText: "What year was Iowa State University founded?",
                 possibleAnswers: [
                    "1845",
                    "1858",
                    "1869",
                    "1876",
                 ],
                 correctAnswerIndex: 1),
        Question(questionText: "What is the official mascot of Iowa State University?",
                 possibleAnswers: [
                    "Cy the Cardinal",
                    "Herky the Hawk",
                    "Benny the Bull",
                    "Big Red"
                 ],
                 correctAnswerIndex: 0),
        Question(questionText: "What famous U.S. government agency was co-founded by an Iowa State scientist through work on the Manhattan Project?",
                 possibleAnswers: [
                    "NASA",
                    "FBI",
                    "EPA",
                    "Atomic Energy Commission"
                 ],
                 correctAnswerIndex: 3),
        Question(questionText: "Iowa State was the first university in the nation to offer waht major?",
                 possibleAnswers: [
                    "Aerospace Engineering",
                    "Veterinary Medicine",
                    "Agricultural Engineering",
                    "Computer Science"
                 ],
                 correctAnswerIndex: 2),
        Question(questionText: "What is the name of the central green space on campus, known as a gathering place for students?",
                 possibleAnswers: [
                    "Campustown Square",
                    "Jack Trice Plaza",
                    "Parks Library",
                    "Central Campus"
                 ],
                 correctAnswerIndex: 3),
        Question(questionText: "Which team is Iowa State's biggest in-state rival",
                 possibleAnswers: [
                    "Drake Bulldogs",
                    "Iowa Hawkeyes",
                    "Wartburg Knights",
                    "Northern Iowa Panthers"
                 ],
                 correctAnswerIndex: 1),
        Question(questionText: "What is the name of the bell tower that stands as on of the most iconic landmarks on campus?",
                 possibleAnswers: [
                    "Trice Tower",
                    "Beardshear Bell",
                    "Campanile",
                    "Hilton Tower"
                 ],
                 correctAnswerIndex: 2),
        Question(questionText: "Iowa State’s basketball arena, Hilton Coliseum, is famous for its raucous crowd atmosphere. What is this effect known as?",
                 possibleAnswers: [
                    "Cyclone Surge",
                    "Hilton Magic",
                    "Cardinal Chaos",
                    "Cyclone Wave"
                 ],
                 correctAnswerIndex: 1),
        Question(questionText: "What is the official school motto of Iowa State University?",
                 possibleAnswers: [
                    "Think Big, Act Bold",
                    "Science with Practice",
                    "Innovation for the Future",
                    "A Legacy of Learning"
                 ],
                 correctAnswerIndex: 1),
        Question(questionText: "What is the name of the Iowa State University's student newspaper?",
                 possibleAnswers: [
                    "The Daily Cyclone",
                    "The Daily",
                    "The Cyclone",
                    "The Cyclone Gazette"
                 ],
                 correctAnswerIndex: 1)
        ]
}

