//
//  ViewController.swift
//  Right on Target
//
//  Created by Karpinets Alexander on 20.02.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var slider: UISlider!
    @IBOutlet var label: UILabel!
    
    var number = 0
    var round = 1
    var points = 0
    
    override func loadView() {
        super.loadView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDidDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        number = Int.random(in: 1...50)
        label.text = String(number)
        
    }
    
    @IBAction func checkNumber() {
            let numSlider = Int(slider.value.rounded())
        
            if numSlider > number {
                points += 50 - numSlider + number
            } else if
                numSlider < number {
                points += 50 - number + numSlider
            } else {
                points += 50
            }
        
            if round == 5 {
                let alert = UIAlertController(
                    title: "Игра окончена!",
                    message: "Вы заработали \(points) очков",
                    preferredStyle: .alert)
                alert.addAction(UIAlertAction(
                    title: "Начать заново",
                    style: .default,
                    handler: nil))
                    present(alert, animated: true)
                round = 1
                points = 0
            } else {
                round += 1
            }
            number = Int.random(in: 1...50)
            label.text = String(number)
        }
    }

