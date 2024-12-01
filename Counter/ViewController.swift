//
//  ViewController.swift
//  Counter
//
//  Created by Andrey Sopov on 01.12.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var count = 0
    
    @IBOutlet weak var counterLabel: UILabel! {
        didSet {
            counterLabel.text = "Значение счётчика:\(count)"
        }
    }
    
        
    @IBAction func addCount(_ sender: Any) {
        
        count += 1
        counterLabel.text = "Значение счётчика:\(count)"
        
        print("tap")
    }
    
    
}

