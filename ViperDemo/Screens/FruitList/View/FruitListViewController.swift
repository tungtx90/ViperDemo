//
//  FruitListViewController.swift
//  ViperDemo
//
//  Created by Tung Tran on 9/6/23.
//

import UIKit

final class FruitListViewController: UIViewController {
    lazy var presenter: FruitListPresenterProtocol = {
        let interactor = FruitListInteractor()
        let fruitListPresenter = FruitListPresenter(view: self, router: FruitListRouter(), interactor: interactor)
        interactor.presenter = fruitListPresenter
        
        return fruitListPresenter
    }()
    
    @IBOutlet private weak var tableView: UITableView!
}

// MARK: - View Lifecycle
extension FruitListViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        presenter.viewDidLoad()
    }
}

// MARK: - FruitListViewProtocol
extension FruitListViewController: FruitListViewProtocol {
    func updateTitle(_ title: String) {
        self.title = title
    }
    
    func reloadTableView() {
        tableView.reloadData()
    }
    
    func deselectTableViewRow(indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

// MARK: - Private
extension FruitListViewController {
    private func setupUI() {
        presenter.register(tableView: tableView)
        tableView.dataSource = presenter
        tableView.delegate = presenter
    }
}
