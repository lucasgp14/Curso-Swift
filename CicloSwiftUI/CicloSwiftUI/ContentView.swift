//
//  ContentView.swift
//  CicloSwiftUI
//
//  Created by Lucas Gustavo Pérez on 17/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var contenido = ""
    @State private var show = true
    @ObservedObject var contador = Modelo()
    @State private var titulo = ""
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            if show{
                Text("Hello, world!")
                    .onAppear{
                        print("Aparecio texto de bienvenida")
                    }
                    .onDisappear{
                        print("Desaparecio texto de bienvenida")
                    }
            }
            
            Text("Contador = \(contador.contador)")
            Button("Reiniciar"){
                contador.contador += 1
            }
            Spacer()
            vista2()
            Spacer()
            vista3()
            Spacer()
            vista4()
            Spacer()
            vista5()
            
            Button(action: {
                self.show.toggle()
            }){
                Text("Desaparecer texto")
            }
            .onAppear{
                print("Aparecio el boton")
            }
            TextField("Titulo de tetxo", text: $contenido)
                .onAppear{
                    self.contenido = "Contenido que viene desde otra view"
                }
        }
        .padding()
    }
}

struct vista2: View {
    @ObservedObject var contador = Modelo()
    
    var body: some View {
        VStack{
            Text("Contador vista 2 = \(contador.contador)")
            Button("Sumar contador"){
                contador.contador += 1
            }
        }
    }
}

struct vista3: View {
    
    @StateObject var contador = Modelo()
    
    var body: some View {
        VStack{
            Text("Contador vista 3 = \(contador.contador)")
            Button("Sumar contador"){
                contador.contador += 1
            }
        }
    }
}


struct vista4: View {
    
    @EnvironmentObject var contador: Modelo
    
    var body: some View {
        VStack{
            Text("Contador vista 4 (EnvironmentObject)= \(contador.contador)")
            Button("Sumar contador"){
                contador.contador += 1
            }
        }
    }
}

struct vista5: View {
    
    @EnvironmentObject var contador: Modelo
    
    var body: some View {
        VStack{
            Text("Contador vista 5 = \(contador.contador)")
            Button("Sumar contador"){
                contador.contador += 1
            }
        }
    }
}


#Preview {
    ContentView()
}
