//
//  ViewController.swift
//  Right on Target
//
//  Created by Karpinets Alexander on 20.02.2022.

import UIKit

class NumbersViewController: UIViewController {
    
    var game: Game!
    
    @IBOutlet var slider: UISlider!
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let generator = NumberGenerator(startValue: 1, endValue: 50)!
        game = Game(valueGenerator: generator, rounds: 5)
        updateLabelWithSecretNumber(newText: String(game.currentRound.currentSecretValue))
    }
    
    @IBAction func checkNumber() {
        // Высчитываем очки за раунд
        game.currentRound.calculateScore(with: Int(slider.value))
        
        if game.isGameEnded {
            showAlertWith(score: game.score)
            game.restartGame()
        } else {
            game.startNewRound()
        }
        updateLabelWithSecretNumber(newText: String(game.currentRound.currentSecretValue))
    }
    
    
    func updateLabelWithSecretNumber(newText: String ) {
        label.text = newText
    }
    
    private func showAlertWith( score: Int ) {
        let alert = UIAlertController(
            title: "Игра окончена",
            message: "Вы заработали \(score) очков",
            preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Начать заново", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
}
