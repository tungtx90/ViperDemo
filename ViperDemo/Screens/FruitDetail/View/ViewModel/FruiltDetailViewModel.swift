//
//  FruiltDetailViewModel.swift
//  ViperDemo
//
//  Created by Tung Tran on 9/6/23.
//

import Foundation

struct FruitDetailViewModel {
    let title: String
    let imageName: String
    let subtitle: String
    
    init(fruit: Fruit) {
        title = fruit.name
        subtitle = fruit.vitamin
        imageName = fruit.name
    }
}
