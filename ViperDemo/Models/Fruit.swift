//
//  Fruit.swift
//  ViperDemo
//
//  Created by Tung Tran on 9/6/23.
//

import Foundation

struct Fruit {
    let name: String
    let vitamin: String
}

// MARK: - Codable
extension Fruit: Codable {}
