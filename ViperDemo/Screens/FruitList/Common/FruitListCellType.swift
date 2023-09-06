//
//  FruitListCell.swift
//  ViperDemo
//
//  Created by Tung Tran on 9/6/23.
//

import Foundation

enum FruitListCellType: CaseIterable {
    case normal
    
    var id: String {
        switch self {
        case .normal:
            return "NormalCell"
        }
    }
}
