//
//  SecondViewController.swift
//  NativeLayoutPractice
//
//  Created by Андрей  on 24.11.2022.
//

import UIKit
import TinyConstraints

class SecondViewController: UIViewController {
    
    var view1: UIView!
    var view2: UIView!
    var imageView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
    }
    fileprivate func initViews() {
        view1 = TinyView()
        view2 = TinyView()
        imageView = UIImageView()
        configureViews()
        addSubViews()
        constrainSubviews()
    }
    
    fileprivate func configureViews() {
        view1.backgroundColor = .blue
    }
    
    fileprivate func addSubViews() {
        self.view.addSubview(view1)
    }
    
    fileprivate func constrainSubviews() {
        view1.edgesToSuperview()
    }
}
