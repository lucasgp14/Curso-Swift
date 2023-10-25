//
//  DetalleViewController.swift
//  TablasUIKit
//
//  Created by Lucas Gustavo Pérez on 11/10/2023.
//

import UIKit

class DetalleViewController: UIViewController {

    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var nombre: UILabel!
    
    var datosLista : Lista?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nombre.text = datosLista?.nombre
        email.text = datosLista?.email
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
