//
//  FruitListRouterProtocol.swift
//  ViperDemo
//
//  Created by Tung Tran on 9/6/23.
//

import Foundation
import UIKit

protocol FruitListRouterProtocol: AnyObject {
    func displayError(_ error: NSError, from viewController: UIViewController)
    func pushFruitDetail(fruit: Fruit, from viewController: UIViewController)
}
