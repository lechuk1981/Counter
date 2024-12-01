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
    
    @IBOutlet weak var counterButton: UIButton! {
        didSet {
            counterButton.tintColor = .red
        }
        
    }
    @IBOutlet weak var historyTextView: UITextView! { didSet {
        historyTextView.text = "История изменений :"
    }
        
    }
    @IBOutlet weak var counterLabel: UILabel! {
        didSet {
            counterLabel.text = "Значение счётчика:\(count)"
        }
    }
    
    
    @IBAction func addCount(_ sender: Any) {
        
        count += 1
        setLabel(sender,count, "значение изменено на +1")
        
    }
    
    @IBAction func removeCount(_ sender: Any) {
        
        if count > 0 {
            count -= 1
            setLabel(sender,count,"значение изменено на -1")
        }
        else {
            count = 0
            setLabel(sender,count,"попытка уменьшить значение счётчика ниже 0")
        }
        
    }
    @IBAction func resetCount(_ sender: Any) {
        
        count = 0
        setLabel(sender,count, "значение сброшено")
    }
    
    func setLabel (_ sender: Any,_ count: Int, _ dataCount: String) {
        
        
        counterLabel.text = "Значение счётчика:\(count)"
        historyTextView.text += "\n\(dataCount) \(Date.now.formatted(date: .numeric, time: .shortened))"
        
    }
    
}

