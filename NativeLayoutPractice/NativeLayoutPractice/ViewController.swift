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
        initViews()
        createConstraints()
        
    }
    
    func initViews() {
        self.view1 = UIView()
        self.view2 = UIView()
        self.view3 = UIView()
        
        view1.translatesAutoresizingMaskIntoConstraints = false
        view2.translatesAutoresizingMaskIntoConstraints = false
        view3.translatesAutoresizingMaskIntoConstraints = false
        
        view1.backgroundColor = .cyan
        view2.backgroundColor = .black
        view3.backgroundColor = .brown
        
        
        self.view.addSubview(view1)
        self.view.addSubview(view2)
        self.view.addSubview(view3)
    }
    
    func createConstraints() {
        let leftPin = NSLayoutConstraint(item: view1, attribute: .left, relatedBy: .equal, toItem: self.view, attribute: .left, multiplier: 1.0, constant: 0)
        let topPin = NSLayoutConstraint(item: view1, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 0)
        let rightPin = NSLayoutConstraint(item: view1, attribute: .right, relatedBy: .equal, toItem: self.view, attribute: .right, multiplier: 1.0, constant: 0)
        let pinBottom = NSLayoutConstraint(item: view1, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1.0, constant: 0)
        
        self.view.addConstraints([leftPin, rightPin, topPin, pinBottom])
    }


}

