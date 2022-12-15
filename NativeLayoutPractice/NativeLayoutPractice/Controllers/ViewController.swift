//
//  ViewController.swift
//  NativeLayoutPractice
//
//  Created by Андрей  on 22.11.2022.
//

import UIKit

class ViewController: UIViewController, Storyboarded {
    
    var coordinator: MainCoordinator?
    var view1: UIView!
    var view2: UIView!
    var imageView: UIImageView!
    var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initViews()
        
    }
    
    func initViews() {
        view1 = UIView()
        view2 = UIView()
        imageView = UIImageView()
        button = UIButton()
        
        configureViews()
        addSubViews()
        createConstraints()
    }
    
    fileprivate func configureViews() {
        view1.translatesAutoresizingMaskIntoConstraints = false
        view2.translatesAutoresizingMaskIntoConstraints = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.image = UIImage(named: "guy")
        imageView.contentMode = .scaleAspectFit
        
        view1.backgroundColor = .cyan
        view2.backgroundColor = .green
        imageView.backgroundColor = .white
        button.backgroundColor = .blue
        button.tintColor = .white
        
        button.addTarget(self, action: #selector(moveToVC), for: .touchUpInside)
    }
    
    fileprivate func addSubViews() {
        self.view.addSubview(view1)
        self.view.addSubview(view2)
        self.view1.addSubview(imageView)
        self.view2.addSubview(button)
    }
    
    @objc func moveToVC() {
        coordinator!.moveToSecondScreen()
    }
    
    fileprivate func createConstraints() {
        let leftPinView1 = NSLayoutConstraint(item: view1, attribute: .left, relatedBy: .equal, toItem: self.view, attribute: .left, multiplier: 1.0, constant: 0.0)
        let topPinView1 = NSLayoutConstraint(item: view1, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 0.0)
        let rightPinView1 = NSLayoutConstraint(item: view1, attribute: .right, relatedBy: .equal, toItem: self.view, attribute: .right, multiplier: 1.0, constant: 0.0)
        let heightView1 = NSLayoutConstraint(item: view1, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.65, constant: 0.0)
        let verticalView1 = NSLayoutConstraint(item: view1, attribute: .bottom, relatedBy: .equal, toItem: view2, attribute: .top, multiplier: 1.0, constant: 0)
        
        let leftPinView2 = NSLayoutConstraint(item: view2, attribute: .left, relatedBy: .equal, toItem: self.view, attribute: .left, multiplier: 1.0, constant: 0)
        let bottomPinView2 = NSLayoutConstraint(item: view2, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 0)
        let rightPinView2 = NSLayoutConstraint(item: view2, attribute: .right, relatedBy: .equal, toItem: self.view, attribute: .right, multiplier: 1.0, constant: 0)
        let heightView2 = NSLayoutConstraint(item: view2, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.35, constant: 0.0)
        
        let imagePosX = NSLayoutConstraint(item: imageView, attribute: .centerX, relatedBy: .equal, toItem: view1, attribute: .centerX, multiplier: 1.0, constant: 0)
        let imagePosY = NSLayoutConstraint(item: imageView, attribute: .centerY, relatedBy: .equal, toItem: view1, attribute: .centerY, multiplier: 1.0, constant: 0)
        let imageWidth = NSLayoutConstraint(item: imageView, attribute: .width, relatedBy: .equal, toItem: view1, attribute: .width, multiplier: 0.0, constant: 200)
        let imageHeight = NSLayoutConstraint(item: imageView, attribute: .height, relatedBy: .equal, toItem: view1, attribute: .height, multiplier: 0.0, constant: 200)
        
        let buttonPosX = NSLayoutConstraint(item: button, attribute: .centerX, relatedBy: .equal, toItem: view2, attribute: .centerX, multiplier: 1.0, constant: 0)
        let buttonPosY = NSLayoutConstraint(item: button, attribute: .centerY, relatedBy: .equal, toItem: view2, attribute: .centerY, multiplier: 1.0, constant: 0)
        let buttonWidth = NSLayoutConstraint(item: button, attribute: .width, relatedBy: .equal, toItem: view2, attribute: .width, multiplier: 0.0, constant: 200)
        let buttonHeight = NSLayoutConstraint(item: button, attribute: .height, relatedBy: .equal, toItem: view2, attribute: .height, multiplier: 0.0, constant: 100)

        self.view.addConstraints([leftPinView1, topPinView1, rightPinView1, heightView1, verticalView1, leftPinView2, bottomPinView2, rightPinView2, heightView2, imagePosX, imagePosY, imageWidth, imageHeight, buttonPosX, buttonPosY, buttonWidth, buttonHeight])
    }
}

