//
//  ViewController.swift
//  helloUIKit
//
//  Created by Lucas Gustavo Pérez on 30/09/2023.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Hola desde viewDidLoad")
    }

    @IBAction func boton(_ sender: UIButton) {
        let alerta = UIAlertController(title: "Titulo", message: "Mensaje de la alerta", preferredStyle: .actionSheet)
        let ok = UIAlertAction(title: "Aceptar", style: .default){
            (_) in print("Okey")
        }
        alerta.addAction(ok)
        present(alerta, animated: true)
    }
    
}

