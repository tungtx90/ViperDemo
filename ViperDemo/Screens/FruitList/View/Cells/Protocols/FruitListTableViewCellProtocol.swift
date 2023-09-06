//
//  FruitListTableViewCellProtocol.swift
//  ViperDemo
//
//  Created by Tung Tran on 9/6/23.
//

import Foundation
import UIKit

protocol FruitListTableViewCellProtocol: UITableViewCell {
    func setup(viewModel: FruitListTableViewCellViewModelProtocol)
}
