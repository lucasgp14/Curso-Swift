//
//  ContentView.swift
//  helloSwift
//
//  Created by Lucas Gustavo Pérez on 29/09/2023.
//

import SwiftUI

//vstack vertical
//hstack horizontal
//zstack fondo

//comentar: command shift 7
//acomodar: option i
//

struct ContentView: View {
    
    //valores de entorno
    @Environment(\.horizontalSizeClass) var sizeClass
    
    
    
    var body: some View {
        if sizeClass == .compact{
            compactDesign()
        }else{
            regularDesign()
        }
    }
}

struct compactDesign: View{
    
    let numero = "1000000000"
    let mensaje = "Hola como estas"
    
    func SendMessage(){
        let sms = "sms:\(numero)&body=\(mensaje)"
        guard let stringSMS = sms.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) else { return }
        UIApplication.shared.open(URL.init(string: stringSMS)!, options: [:],completionHandler: nil)
    }
    
    func SendCall(){
        guard let number = URL(string: "tel://\(numero)") else { return }
        UIApplication.shared.open(number)
    }
    
    let x = "Mi botón"
    @State private var show = false
    
    let nombre: Text = Text("Lucas Gustavo Perez").font(.caption).foregroundColor(.white)
    
    var body: some View{
        ZStack{
            Color.red.edgesIgnoringSafeArea(.all)
            //Image("appstore").resizable().frame(alignment: .bottom)
            HStack{
                VStack(alignment: .center) {
                    //Image(systemName: "globe")
                      //  .imageScale(.large)
                      //  .foregroundStyle(.tint)
                      //  .clipShape(Circle())
                    Button(action:{
                        show = true
                    }){
                        Text(x)
                    }.alert(isPresented: $show, content: {
                        Alert(title: Text("Titulo"), message: Text("Mensaje"), dismissButton: .default(Text("Aceptar")))
                    })
                }
                .padding()
                HStack{
                    Button(action:{
                        SendCall()
                    }){
                        Image(systemName: "phone.fill")
                            .modifier(boton(color: .blue))
                    }
                    Button(action:{
                        SendMessage()
                    }){
                        Image(systemName: "message.fill")
                            .modifier(boton(color: .green))
                    }
                }
                Image(systemName: "person.crop.circle").font(.largeTitle).foregroundColor(.blue)
                VStack(alignment: .leading, spacing: 10)
                {
                    nombre
                    
                    Text("Pje. Monserrat 3144").font(.caption2).foregroundColor(.white).italic()
                }
            }
        }
    }
}

struct boton : ViewModifier{
    var color: Color
    func body(content: Content) -> some View {
        content
            .padding()
            .background(color)
            .clipShape(Circle())
            .foregroundStyle(.white)
            .font(.title)
    }
}

struct regularDesign: View{
    
    let x = "Mi botón"
    @State private var show = false
    
    let nombre: Text = Text("Lucas Gustavo Perez").font(.caption).foregroundColor(.white)
    
    var body: some View{
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            //Image("appstore").resizable().frame(alignment: .bottom)
            HStack{
                VStack(alignment: .center) {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                        .clipShape(Circle())
                    Button(action:{
                        show = true
                    }){
                        Text(x)
                    }.alert(isPresented: $show, content: {
                        Alert(title: Text("Titulo"), message: Text("Mensaje"), dismissButton: .default(Text("Aceptar")))
                    })
                }
                .padding()
                VStack(alignment: .leading, spacing: 10)
                {
                    nombre
                    
                    Text("Pje. Monserrat 3144").font(.caption2).foregroundColor(.white).italic()
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
