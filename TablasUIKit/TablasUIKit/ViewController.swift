//
//  ViewController.swift
//  TablasUIKit
//
//  Created by Lucas Gustavo Pérez on 11/10/2023.
//

import UIKit

struct Lista {
    let nombre : String
    let email : String
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tabla: UITableView!
    
    var lista = [Lista]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabla.delegate = self
        tabla.dataSource = self
        
        let lista1 = Lista(nombre: "Lucas", email: "lucas@hotmail.com")
        let lista2 = Lista(nombre: "Lunay", email: "lunay@hotmail.com")
        let lista3 = Lista(nombre: "Rocha", email: "rocha@hotmail.com")
        let lista4 = Lista(nombre: "Yaiz", email: "yaiz@hotmail.com")
        lista.append(lista1)
        lista.append(lista2)
        lista.append(lista3)
        lista.append(lista4)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lista.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tabla.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let list = lista[indexPath.row]
        celda.textLabel?.text = list.nombre
        celda.detailTextLabel?.text = list.email
        celda.imageView?.image = UIImage(systemName: "person.crop.circle.fill")
        
        return celda
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "enviar", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enviar"{
            if let id = tabla.indexPathForSelectedRow{
                let fila = lista[id.row]
                let destino = segue.destination as? DetalleViewController
                destino?.datosLista = fila
            }
        }
    }
    
}

