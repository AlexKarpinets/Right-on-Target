//
//  Generator.swift
//  Right on Target
//
//  Created by Karpinets Alexander on 23.02.2022.
//

import Foundation

protocol GeneratorProtocol {
    func getRandomValue() -> Int
}

class NumberGenerator: GeneratorProtocol {
    private let startRangeValue: Int
    private let endRangeValue: Int
    
    init?(startValue: Int, endValue: Int) {
        guard startValue <= endValue else {
            return nil
        }
        startRangeValue = startValue
        endRangeValue = endValue
    }
    
    func getRandomValue() -> Int {
        (startRangeValue...endRangeValue).randomElement()!
    }
}