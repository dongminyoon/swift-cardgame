//
//  CardDeck.swift
//  CardGame
//
//  Created by 윤동민 on 04/12/2018.
//  Copyright © 2018 JK. All rights reserved.
//

import Foundation

class CardDeck {
    private var cardDeck : [Card?]
    init() { cardDeck = [] }
    
    // 카드 덱 초기화
    func reset() {
        deckClear()
        createNewDeck()
    }
    
    // 카드 덱을 초기화 하기 전 이전 덱 클리어
    private func deckClear() {
        for index in 0..<cardDeck.count {
            cardDeck.remove(at: index)
        }
    }
    
    // 새로운 카드 덱 생성
    private func createNewDeck() {
        let shapeCount = 5
        let numberCount = 14
        for shapeRaw in 1..<shapeCount {
            for numberRaw in 1..<numberCount {
                guard let shape = CardShape(rawValue: shapeRaw) else { return }
                guard let number = CardNumber(rawValue: numberRaw) else { return }
                cardDeck.append( Card(shape, number) )
            }
        }
    }
    
    // 카드 덱의 현재 카드 개수를 반환
    func count() -> Int {
        return cardDeck.count
    }
    
    func shuffle() {
        print("")
    }
    
    // 카드 덱의 젤 위를 반환하고 카드 덱에서 삭제
    func removeOne() -> Card? {
        guard cardDeck.count != 0 else { return nil }
        return cardDeck.remove(at: cardDeck.count-1)
    }
}