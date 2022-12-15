//
//  MainCoordinator.swift
//  NativeLayoutPractice
//
//  Created by Андрей  on 15.12.2022.
//

import UIKit

class MainCoordinator: Coordinator {
    var childrenCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func moveToSecondScreen() {
        let vc = SecondViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    
}
