//
//  ViewController.swift
//  NativeLayoutPractice
//
//  Created by Андрей  on 22.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var view1: UIView!
    var view2: UIView!
    var view3: UIView!
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func initViews() {
        self.view1 = UIView()
        self.view2 = UIView()
        self.view3 = UIView()
        
        view1.translatesAutoresizingMaskIntoConstraints = false
        view2.translatesAutoresizingMaskIntoConstraints = false
        view3.translatesAutoresizingMaskIntoConstraints = false
        
        view1.backgroundColor = .darkGray
        view2.backgroundColor = .black
        view3.backgroundColor = .brown
        
        
        self.view.addSubview(view1)
        self.view.addSubview(view2)
        self.view.addSubview(view3)
    }


}

