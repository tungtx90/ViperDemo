//
//  FruitListTableViewCell.swift
//  ViperDemo
//
//  Created by Tung Tran on 9/6/23.
//

import UIKit

final class FruitListTableViewCell: UITableViewCell, FruitListTableViewCellProtocol {
    func setup(viewModel: FruitListTableViewCellViewModelProtocol) {
        guard let cellViewModel = viewModel as? FruitListTableViewCell.ViewModel else { return }
        
        var content = defaultContentConfiguration()
        content.text = cellViewModel.title
        content.secondaryText = cellViewModel.detail
        
        contentConfiguration = content
    }
}
