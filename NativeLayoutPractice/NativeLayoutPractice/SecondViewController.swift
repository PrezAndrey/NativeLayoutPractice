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
    var imageView: UIImageView!

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
        view2.backgroundColor = .red
        imageView.image = UIImage(named: "guy")
        imageView.contentMode = .scaleAspectFit
    }
    
    fileprivate func addSubViews() {
        self.view.addSubview(view1)
        self.view.addSubview(view2)
        self.view1.addSubview(imageView)
    }
    
    fileprivate func constrainSubviews() {
        view1.edgesToSuperview(excluding: .bottom)
        view1.height(0.65 * self.view.frame.height)
        view2.edgesToSuperview(excluding: .top)
        view2.topToBottom(of: view1)
        imageView.height(200)
        imageView.width(200)
        imageView.centerInSuperview()
    }
}
