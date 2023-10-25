//
//  ViewController.swift
//  Calculo
//
//  Created by Lucas Gustavo Pérez on 03/10/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultado: UILabel!
    @IBOutlet weak var resultadoDescuento: UILabel!
    @IBOutlet weak var porcentajetxt: UITextField!
    @IBOutlet weak var cantidadtxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        NotificationCenter.default.addObserver(self, selector: #selector(tecladoUp), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(tecladoDown), name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    
    @objc func tecladoUp(){
        let sizeScreen = UIScreen.main.nativeBounds.height
        
        if self.view.frame.origin.y == 0 && sizeScreen == 1136 {
            self.view.frame.origin.y = -50
        }
    }
    
    @objc func tecladoDown(){
        let sizeScreen = UIScreen.main.nativeBounds.height
        
        if self.view.frame.origin.y != 0 && sizeScreen == 1136{
            self.view.frame.origin.y = 0
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    } //Quita el teclado tocando en una zona vacia

    @IBAction func calcular(_ sender: Any) {
        guard let cantidad = cantidadtxt.text else { return  }
        guard let porcentaje = porcentajetxt.text else { return  }
        let cant = (cantidad as NSString).floatValue
        let porciento = (porcentaje as NSString).floatValue
        
        let desc = cant * porciento / 100
        let res = cant - desc
        
        resultado.text = "$\(res)"
        resultadoDescuento.text = "$\(desc)"
        self.view.endEditing(true)
    }
    
    @IBAction func limpiar(_ sender: Any) {
        cantidadtxt.text = ""
        porcentajetxt.text = ""
        
        resultado.text = "$0.00"
        resultadoDescuento.text = "$0.00"
    }
}

