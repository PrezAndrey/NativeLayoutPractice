//
//  ViewController.swift
//  test
//
//  Created by Андрей  on 26.11.2022.
//

import UIKit

class ViewController: UIViewController {
    var counter = 0
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func button(_ sender: Any) {
        counter += 1
        
        if counter == 10 {
            label.text = "Done!"
        } else if counter == 11 {
            counter = 0
            label.text = "Process..."
        } else {
            label.text = "\(counter)"
        }
    }
    
}

