//
//  Modelo.swift
//  ListasGrids
//
//  Created by Lucas Gustavo Pérez on 10/10/2023.
//

import Foundation

struct Modelo: Identifiable{
    let id = UUID()
    let emoji : String
    let nombre : String
    let descripcion: String
}

let lista: [Modelo] = [
    Modelo(emoji: "😍", nombre: "Cara de Enamorado", descripcion: "Represeta el enamoramiento por otra persona"),
    Modelo(emoji: "👤", nombre: "Persona", descripcion: "Representa la identificacion de una persona"),
    Modelo(emoji: "😇", nombre: "Cara de angel", descripcion: "Representa de manera angelical un emoji"),
    Modelo(emoji: "😍", nombre: "Cara de Enamorado", descripcion: "Represeta el enamoramiento por otra persona"),
    Modelo(emoji: "👤", nombre: "Persona", descripcion: "Representa la identificacion de una persona"),
    Modelo(emoji: "😇", nombre: "Cara de angel", descripcion: "Representa de manera angelical un emoji"),
    Modelo(emoji: "😍", nombre: "Cara de Enamorado", descripcion: "Represeta el enamoramiento por otra persona"),
    Modelo(emoji: "👤", nombre: "Persona", descripcion: "Representa la identificacion de una persona"),
    Modelo(emoji: "😇", nombre: "Cara de angel", descripcion: "Representa de manera angelical un emoji")
]
