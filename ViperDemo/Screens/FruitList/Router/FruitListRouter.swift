//
//  FruitListRouter.swift
//  ViperDemo
//
//  Created by Tung Tran on 9/6/23.
//

import Foundation
import UIKit

final class FruitListRouter {
    
}

// MARK: - FruitListRouterProtocol
extension FruitListRouter: FruitListRouterProtocol {
    func displayError(_ error: NSError, from viewController: UIViewController) {
        let alert = UIAlertController(title: "Error", message: error.localizedDescription, preferredStyle: .alert)
        viewController.present(alert, animated: true)
    }
    
    func pushFruitDetail(fruit: Fruit, from viewController: UIViewController) {
        let detailViewController = FruitDetailViewController(nibName: "FruitDetailViewController", bundle: nil)
        detailViewController.presenter.fruit = fruit
        viewController.navigationController?.pushViewController(detailViewController, animated: true)
    }
}
