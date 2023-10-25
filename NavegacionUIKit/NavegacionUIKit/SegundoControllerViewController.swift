//
//  SegundoControllerViewController.swift
//  NavegacionUIKit
//
//  Created by Lucas Gustavo Pérez on 09/10/2023.
//

import UIKit

class SegundoControllerViewController: UIViewController {

    @IBOutlet weak var texto: UILabel!
    var saludo: String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        
        texto.text = saludo
    }
    
    @IBAction func regresar(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}
