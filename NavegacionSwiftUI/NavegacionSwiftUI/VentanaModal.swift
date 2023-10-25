//
//  VentanaModal.swift
//  NavegacionSwiftUI
//
//  Created by Lucas Gustavo Pérez on 04/10/2023.
//

import SwiftUI

struct VentanaModal: View {
    
    @Environment(\.presentationMode) var back
    var texto : String
    
    var body: some View {
        ZStack{
            Color.green.edgesIgnoringSafeArea(.all)
            VStack{
                Text(texto).font(.largeTitle).foregroundColor(.white).bold()
                Button("Cerrar"){
                    back.wrappedValue.dismiss()
                }
            }
        }
    }
}
