//
//  FruitListPresenterProtocol.swift
//  ViperDemo
//
//  Created by Tung Tran on 9/6/23.
//

import Foundation
import UIKit

protocol FruitListPresenterProtocol: AnyObject & UITableViewDataSource & UITableViewDelegate {
    var view: FruitListViewProtocol? { get }
    var router: FruitListRouterProtocol { get }
    var interactor: FruitListInteractorProtocol { get }
    
    func viewDidLoad()
    func register(tableView: UITableView)
    
    func fruitListDidFetch(result: Result<[Fruit], NSError>)
    func displayDetailFruit(_ fruit: Fruit)
}
