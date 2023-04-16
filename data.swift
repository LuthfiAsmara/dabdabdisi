//
//  data.swift
//  kawruh
//
//  Created by Luthfi Asmara on 10/04/23.
//

import Foundation

struct QA: Identifiable, Hashable {
    var id = UUID()
    var image: String
    var question: String
    var answer: [Answer]
//    var answer2: Answer
    var gbAnswer: String
    var bbAnswer: String
//    var happyImg: String
//    var sadImg: String
    
    
}

struct Answer: Identifiable, Hashable{
    var id = UUID()
    var title: String
    var translate: String
    var status: Bool
    var img: String
}

let answer1: [Answer] = [
    Answer(
      title: "Sugeng Enjing, Pak Bagyo",
      translate: "Good morning, Mr. Bagyo",
      status: true,
      img: "String"),
    Answer(
      title: "Sugeng Esuk, Pak Bagyo",
      translate: "Good morning, Mr. Bagyo",
      status: false,
      img: "kawruh")
]

let answer2: [Answer] = [
    Answer(
      title: "Kulo badhe nyuwun tulung kangge mendetne layangan",
      translate: "May I ask for your help to pick up my kite?",
      status: true,
      img: "kawruh"),
    Answer(
      title: "Aku jaluk tulung dijupukne layangane",
      translate: "May I ask for your help to pick up my kite",
      status: false,
      img: "kawruh"),
]

let answer3: [Answer] = [
    Answer(
      title: "Matur sembah nuwun. Sampun mendetne layangan kulo",
      translate: "Thank you for retrieving my kite",
      status: true,
      img: "kawruh"),
    Answer(
      title: "Nuwun yo. Wis jupukne layanganku",
      translate: "Thank you for retrieving my kite",
      status: false,
      img: "kawruh"),
]




let allQuestion: [QA] = [
   QA(image: "bg",
      question: "you want to greet your neighbor, what should you say?",
      answer: answer1,
      gbAnswer: "Good morning, Joko.\nWow, I'm happy.\nYour kromo language\nis excellent!",
      bbAnswer: "Good morning, Joko.\nCould you use the\nkromo language when\nspeaking with\nolder people?"
     ),
     
   QA(image: "bg",
      question: "Then you tell them that your kite is stuck in a tree and you want to ask for their help, what would you say?",
      answer: answer2,
      gbAnswer: "Sure, I'd be glad\nto help you",
      bbAnswer: "Alright, I'll help you.\nBut can you repeat\nwhat you said using\nthe kromo language?"
      ),
   
   QA(image: "bg",
      question: "Your neighbor successfully retrieves your stuck kite, what should you say to express your gratitude?",
      answer: answer3,
      gbAnswer: "No problem,\nhappy to help you.",
      bbAnswer: "Why did you say that?"
      )
   
     
]


struct OnboardingStep {
    let title: String
//    let image: String
}

let allSteps = [
        OnboardingStep(title: "Hi, Welcome to KromoTalk"),
        OnboardingStep(title: "Javanese people commonly use their native language in daily life, which can be divided into two types: ngoko and kromo. Ngoko is used for peers, while kromo is used for older people as a sign of respect and reflecting traditional cultural values of politeness."),
      
        OnboardingStep(title: "Unfortunately, many young people don't use kromo language when communicating with older people. They are unaware of the potential impact, which may cause the older person to feel offended, sad, or even angry."),
        
        OnboardingStep(title: "So, we want to encourage youngsters and raise their awareness that speaking in Kromo language with older individuals is highly important.")
    ]





