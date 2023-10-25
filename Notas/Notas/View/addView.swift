//
//  addView.swift
//  Notas
//
//  Created by Lucas Gustavo Pérez on 20/10/2023.
//

import SwiftUI

struct addView: View {
    
    @ObservedObject var model : ViewModel
    @Environment(\.managedObjectContext) var context
    
    var body: some View {
        VStack{
            Text(model.updateItem != nil ? "Editar nota" : "Agregar Nota")
                .font(.largeTitle)
                .bold()
            Spacer()
            TextEditor(text: $model.nota)
            Divider()
            DatePicker("Seleccionar Fecha", selection: $model.fecha)
            Spacer()
            Button(action: {
                if model.updateItem != nil{
                    model.editData(context: context)
                }else{
                    model.saveData(context: context)
                }
            }){
                Label(
                    title: { Text("Guardar").foregroundStyle(.white).bold() },
                    icon: { Image(systemName: "plus").foregroundColor(.white) }
                )
            }.padding()
            .frame(width: UIScreen.main.bounds.width - 30)
            .background(model.nota == "" ? Color.gray : Color.blue)
            .cornerRadius(8)
            .disabled(model.nota == "" ? true : false)
        }.padding()
    }
}

