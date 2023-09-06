//
//  FruitListPresenter.swift
//  ViperDemo
//
//  Created by Tung Tran on 9/6/23.
//

import Foundation
import UIKit

final class FruitListPresenter: NSObject {
    weak var view: FruitListViewProtocol?
    let router: FruitListRouterProtocol
    let interactor: FruitListInteractorProtocol
    
    private var cellViewModels: [FruitListTableViewCellViewModelProtocol] = []
    
    init(view: FruitListViewProtocol, router: FruitListRouterProtocol, interactor: FruitListInteractorProtocol) {
        self.view = view
        self.router = router
        self.interactor = interactor
    }
}

// MARK: - FruitListPresenterProtocol
extension FruitListPresenter: FruitListPresenterProtocol {
    func viewDidLoad() {
        view?.updateTitle("Fruits")
        interactor.loadFruits()
    }
    
    func register(tableView: UITableView) {
        for cellType in FruitListCellType.allCases {
            switch cellType {
            case .normal:
                tableView.register(UINib(nibName: "FruitListTableViewCell", bundle: nil), forCellReuseIdentifier: cellType.id)
            }
        }
    }
    
    func fruitListDidFetch(result: Result<[Fruit], NSError>) {
        switch result {
        case .success(let fruits):
            cellViewModels = fruits.compactMap({ FruitListTableViewCell.ViewModel(fruit: $0) })
            view?.reloadTableView()
        case .failure(let error):
            guard let view = view else { return }
            router.displayError(error, from: view)
        }
    }
    
    func displayDetailFruit(_ fruit: Fruit) {
        guard let view = view else { return }
        router.pushFruitDetail(fruit: fruit, from: view)
    }
}

// MARK: - UITableViewDataSource
extension FruitListPresenter: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellViewModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellViewModel = cellViewModels[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: cellViewModel.cellType.id, for: indexPath)
        (cell as? FruitListTableViewCellProtocol)?.setup(viewModel: cellViewModel)
        return cell
    }
}

// MARK: - UITableViewDelegate
extension FruitListPresenter: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        interactor.didSelectFruit(cellViewModels[indexPath.row].fruit)
        view?.deselectTableViewRow(indexPath: indexPath)
    }
}
