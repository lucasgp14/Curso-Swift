//
//  Home2.swift
//  JSON
//
//  Created by Lucas Gustavo Pérez on 30/10/2023.
//

import SwiftUI

struct Home2 : View {
    @StateObject var json2 = Modelo2ViewModel()
    
    var body : some View{
        if json2.datosModelo.data.isEmpty{
            ProgressView()
        }else{
            List(json2.datosModelo.data, id: \.id){ item in
                HStack{
                    Image(item.avatar)
                    VStack(alignment: .leading){
                        Text(item.firstName).font(.title)
                        Text(item.email).font(.subheadline)
                    }.navigationTitle("JSON Con IMAGEN")
                }
            }
        }
    }
    
}
