//
//  FruitListInteractorProtocol.swift
//  ViperDemo
//
//  Created by Tung Tran on 9/6/23.
//

import Foundation

protocol FruitListInteractorProtocol: AnyObject {
    var presenter: FruitListPresenterProtocol? { get }
    
    func loadFruits()
    func didSelectFruit(_ fruit: Fruit)
}
