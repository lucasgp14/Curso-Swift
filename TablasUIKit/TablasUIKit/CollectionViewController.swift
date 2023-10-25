//
//  CollectionViewController.swift
//  TablasUIKit
//
//  Created by Lucas Gustavo Pérez on 11/10/2023.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var coleccion: UICollectionView!
    var lista = [Lista]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        coleccion.delegate = self
        coleccion.dataSource = self
        
        let lista1 = Lista(nombre: "Lucas", email: "lucas@hotmail.com")
        let lista2 = Lista(nombre: "Lunay", email: "lunay@hotmail.com")
        let lista3 = Lista(nombre: "Rocha", email: "rocha@hotmail.com")
        let lista4 = Lista(nombre: "Yaiz", email: "yaiz@hotmail.com")
        lista.append(lista1)
        lista.append(lista2)
        lista.append(lista3)
        lista.append(lista4)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return lista.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    

}
