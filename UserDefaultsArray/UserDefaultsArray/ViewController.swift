//
//  ViewController.swift
//  UserDefaultsArray
//
//  Created by Lucas Gustavo Pérez on 20/10/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var text3: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var text1: UITextField!
    
    var array = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if let myArray = UserDefaults.standard.stringArray(forKey: "array"){
            text1.text = myArray[0]
            text2.text = myArray[1]
            text3.text = myArray[2]
        }
    }

    @IBAction func guardar(_ sender: UIButton) {
        if text1.text == ""{
            alerta(titulo: "Error", mensaje: "Completa todos los campos")
        }else{
            array.append(text1.text ?? "")
            array.append(text2.text ?? "")
            array.append(text3.text ?? "")
            
            UserDefaults.standard.set(array, forKey: "array")
            print("Funciona")
            alerta(titulo: "Exito", mensaje: "Texto guardado correctamente")
        }
    }
        
    func alerta(titulo: String, mensaje: String){
        let alert = UIAlertController(title: titulo, message: mensaje, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
}

