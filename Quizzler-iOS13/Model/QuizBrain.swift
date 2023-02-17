//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Cem Gündoğdu on 16.02.2023.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation
struct QuizBrain {
    let quiz = [
        Question(q: "Sümüklüböceğin kanı yeşildir.", a: "Doğru"),
        Question(q: "İnsan kemiklerinin yaklaşık dörtte biri ayaklardadır.", a: "Doğru"),
        Question(q: "İki insan akciğerinin toplam yüzey alanı yaklaşık 70 metrekaredir.", a: "Doğru"),
        Question(q: "ABD, West Virginia'da, arabanızla yanlışlıkla bir hayvana çarparsanız, onu yemek için eve götürmekte özgürsünüz.", a: "Doğru"),
        Question(q: "Londra, Birleşik Krallık'ta, Parlamento Binası'nda ölürseniz, teknik olarak bir devlet cenazesine hak kazanırsınız, çünkü bina çok kutsal bir yer olarak kabul edilir.", a: "Yanlış"),
        Question(q: "Portekiz'de okyanusa işemek suçtur.", a: "Doğru"),
        Question(q: "Bir ineği merdivenlerden aşağı götürebilirsin ama yukarı çıkaramazsın.", a: "Yanlış"),
        Question(q: "Google başlangıçta 'Destek' olarak adlandırıldı.", a: "Doğru"),
        Question(q: "Friends dizisi 6 ana karakterden oluşur.", a: "Doğru"),
        Question(q: "Herhangi bir hayvan tarafından üretilen en yüksek ses 188 desibeldir. O hayvan Afrika Filidir.", a: "Yanlış"),
        Question(q: "Hiçbir kare kuru kağıt 7 defadan fazla ikiye katlanamaz.", a: "Yanlış"),
        Question(q: "Çikolata, bir köpeğin kalbini ve sinir sistemini etkiler; küçük bir köpeği öldürmek için birkaç parça yeterlidir.", a: "Doğru")
        
    ]
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer : String) -> Bool {
        if userAnswer == quiz[questionNumber].answer {
            score += 1
            return true
        }else {
            return false
        }
    }
    func getScore() -> Int {
        return score
    }
    
    func getQuestionText() -> String{
        return quiz[questionNumber].text
    }
    func getProgress() -> Float {
        let progress = Float(questionNumber + 1 ) / Float(quiz.count)
        return progress
    }
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
            
        }else {
            questionNumber = 0
            score = 0
            
        }

        
    }
    }
    

