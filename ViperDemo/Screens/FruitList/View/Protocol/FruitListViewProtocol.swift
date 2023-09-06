//
//  FruitListViewProtocol.swift
//  ViperDemo
//
//  Created by Tung Tran on 9/6/23.
//

import Foundation
import UIKit

protocol FruitListViewProtocol: UIViewController {
    var presenter: FruitListPresenterProtocol { get }
    
    func updateTitle(_ title: String)
    func reloadTableView()
    func deselectTableViewRow(indexPath: IndexPath)
}
