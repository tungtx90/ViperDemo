//
//  FruitListTableViewCellViewModelProtocol.swift
//  ViperDemo
//
//  Created by Tung Tran on 9/6/23.
//

import Foundation

protocol FruitListTableViewCellViewModelProtocol {
    var cellType: FruitListCellType { get }
    var fruit: Fruit { get }
}
