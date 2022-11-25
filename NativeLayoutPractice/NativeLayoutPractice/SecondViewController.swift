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

        configureUI()
    }
    func configureUI() {
        view1 = UIView()
        view2 = UIView()
        imageView = UIImageView()
        
        view1.translatesAutoresizingMaskIntoConstraints = false
        view2.translatesAutoresizingMaskIntoConstraints = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        view1.backgroundColor = .blue
        view2.backgroundColor = .red
        
        
        
    }
    
    
}
