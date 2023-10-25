//
//  ViewController.swift
//  NavegacionUIKit
//
//  Created by Lucas Gustavo Pérez on 09/10/2023.
//

import UIKit

class ViewController: UIViewController {
    
    let hola = "Hola, ¿Como estás?"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enviarSegue"{
            let destino = segue.destination as? SegundoControllerViewController
            destino?.saludo = hola
        }
    }


}

