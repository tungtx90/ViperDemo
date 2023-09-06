//
//  FruitDetailViewController.swift
//  ViperDemo
//
//  Created by Tung Tran on 9/6/23.
//

import UIKit

final class FruitDetailViewController: UIViewController {
    lazy var presenter: FruitDetailPresenterProtocol = {
        let interactor = FruitDetailInteractor()
        let fruitDetailPresenter = FruiDetailPresenter(view: self, interactor: interactor)
        interactor.presenter = fruitDetailPresenter
        
        return fruitDetailPresenter
    }()
    
    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var detailTitle: UILabel!
    @IBOutlet private weak var detailSubtitle: UILabel!
    
}

// MARK: - View Lifecycle
extension FruitDetailViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        presenter.viewDidLoad()
    }
}

// MARK: - FruitDetailViewProtocol
extension FruitDetailViewController: FruitDetailViewProtocol {
    func updateTitle(_ title: String) {
        self.title = title
    }
    
    func updateFruitInfo(info: FruitDetailViewModel) {
        imageView.image = UIImage(named: info.imageName)
        detailTitle.text = info.title
        detailSubtitle.text = info.subtitle
    }
}

// MARK: - Private
extension FruitDetailViewController {
    private func setupUI() {
        
    }
}
