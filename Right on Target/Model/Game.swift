//
//  Game.swift
//  Right on Target
//
//  Created by Karpinets Alexander on 23.02.2022.
//

protocol GameProtocol {
    var score: Int { get }
    var currentRound: GameRoundProtocol! { get }
    var isGameEnded: Bool { get }
    var secretValueGenerator: GeneratorProtocol { get }
    func restartGame()
    func startNewRound()
}

class Game: GameProtocol {
    var score: Int {
        var totalScore: Int = 0
        for round in rounds {
            totalScore += round.score
        }
        return totalScore
    }
    private var roundsCount: Int!
    private var rounds: [GameRoundProtocol] = []
    var currentRound: GameRoundProtocol!
    var secretValueGenerator: GeneratorProtocol
    var isGameEnded: Bool {
        if roundsCount == rounds.count {
            return true
        } else {
            return false
        }
    }

    init(valueGenerator: GeneratorProtocol, rounds: Int) {
        secretValueGenerator = valueGenerator
        roundsCount = rounds
        startNewRound()
    }
    
    private func getNewSecretValue() -> Int {
        return secretValueGenerator.getRandomValue()
    }
    
    func restartGame() {
        rounds = []
        startNewRound()
    }

    func startNewRound() {
        let newSecretValue = self.getNewSecretValue()
        currentRound = Round(secretValue: newSecretValue)
        rounds.append( currentRound )
    }

}
