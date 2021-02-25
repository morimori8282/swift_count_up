//
//  ViewController.swift
//  swift_count_up
//
//  Created by ADMIN on 2021/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var count_label: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        count_label.text = String(count)
    }

    @IBAction func plus_button(_ sender: Any) {
        count += 1
        count_label.text = String(count)
        
        if count >= 10 {
            count_label.textColor = .yellow
        }
        
    }
    @IBAction func minus_button(_ sender: Any) {
        count -= 1
        
        if count < 0 {
            count = 0
        }
        count_label.text = String(count)
        
        if count < 10 {
            count_label.textColor = .white
        }
    }
    
}

