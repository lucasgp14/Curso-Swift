//
//  SegundaVista.swift
//  NavegacionSwiftUI
//
//  Created by Lucas Gustavo Pérez on 04/10/2023.
//

import SwiftUI

struct SegundaVista: View {
    var texto : String
    var body: some View {
        Text("Segunda Vista")
            .navigationTitle(texto)
        NavigationLink(destination: TercerVista()){
            Text("Ir a tercer vista")
        }
    }
}
