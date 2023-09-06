//
//  FruitListTableViewCellViewModel.swift
//  ViperDemo
//
//  Created by Tung Tran on 9/6/23.
//

import Foundation

extension FruitListTableViewCell {
    struct ViewModel: FruitListTableViewCellViewModelProtocol {
        let cellType: FruitListCellType = .normal
        
        let title: String
        let detail: String
        
        let fruit: Fruit
        
        init(fruit: Fruit) {
            title = fruit.name
            detail = fruit.vitamin
            self.fruit = fruit
        }
    }
}
