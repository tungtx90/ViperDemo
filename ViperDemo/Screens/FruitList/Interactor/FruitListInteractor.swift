//
//  FruitListInteractor.swift
//  ViperDemo
//
//  Created by Tung Tran on 9/6/23.
//

import Foundation

final class FruitListInteractor {
    weak var presenter: FruitListPresenterProtocol?
}

// MARK: - FruitListInteractorProtocol
extension FruitListInteractor: FruitListInteractorProtocol {
    func loadFruits() {
        let dict = [["name": "Orange","vitamin": "Vitamin C"],["name": "Watermelon","vitamin": "Vitamin A"], ["name": "Banana","vitamin": "Vitamin B6"], ["name": "Apple","vitamin": "Vitamin C"]]
        
        do {
            let data = try JSONSerialization.data(withJSONObject: dict)
            let jsonFormatter = JSONDecoder()
            let fruits = try jsonFormatter.decode([Fruit].self, from: data)
            presenter?.fruitListDidFetch(result: .success(fruits))
        } catch {
            presenter?.fruitListDidFetch(result: .failure(NSError(domain: "fruit", code: 999, userInfo: [NSLocalizedDescriptionKey: "data not found!"])))
        }
    }
    
    func didSelectFruit(_ fruit: Fruit) {
        presenter?.displayDetailFruit(fruit)
    }
}
