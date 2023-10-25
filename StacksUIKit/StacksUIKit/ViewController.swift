//
//  ViewController.swift
//  StacksUIKit
//
//  Created by Lucas Gustavo Pérez on 03/10/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var altura: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let sizeScreen = UIScreen.main.nativeBounds.height
        
        if sizeScreen == 1334 {
            altura.constant = 230
        }
    }


}

