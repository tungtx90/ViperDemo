//
//  FruitDetailViewProtocol.swift
//  ViperDemo
//
//  Created by Tung Tran on 9/6/23.
//

import Foundation
import UIKit

protocol FruitDetailViewProtocol: UIViewController {
    var presenter: FruitDetailPresenterProtocol { get }
    
    func updateTitle(_ title: String)
    func updateFruitInfo(info: FruitDetailViewModel)
}
