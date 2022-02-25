//
//  Round.swift
//  Right on Target
//
//  Created by Karpinets Alexander on 23.02.2022.
//

protocol GameRoundProtocol {
    var score: Int { get }
    var currentSecretValue: Int { get }
    
    func calculateScore(with value: Int)
}

class Round: GameRoundProtocol {
    
    var score: Int = 0
    var currentSecretValue: Int = 0
    
    init(secretValue: Int) {
        currentSecretValue = secretValue
    }
    
    func calculateScore(with value: Int) {
        if value > currentSecretValue {
            score += 50 - value + currentSecretValue
        } else if value < currentSecretValue {
            score += 50 - currentSecretValue + value
        } else {
            score += 50
        }
    }
    }
