//
//  FruitDetailPresenter.swift
//  ViperDemo
//
//  Created by Tung Tran on 9/6/23.
//

import Foundation

final class FruiDetailPresenter: FruitDetailPresenterProtocol {
    var fruit: Fruit?
    weak var view: FruitDetailViewProtocol?
    var interactor: FruitDetailInteractorProtocol
    
    init(view: FruitDetailViewProtocol, interactor: FruitDetailInteractorProtocol) {
        self.view = view
        self.interactor = interactor
    }
    
    func viewDidLoad() {
        guard let fruit = fruit else { return }
        
        view?.updateFruitInfo(info: .init(fruit: fruit))
    }
}
