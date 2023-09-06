//
//  FruitDetailPresenterProtocol.swift
//  ViperDemo
//
//  Created by Tung Tran on 9/6/23.
//

import Foundation

protocol FruitDetailPresenterProtocol: AnyObject {
    var view: FruitDetailViewProtocol? { get }
    var interactor: FruitDetailInteractorProtocol { get }
    var fruit: Fruit? { set get }
    
    func viewDidLoad()
}
