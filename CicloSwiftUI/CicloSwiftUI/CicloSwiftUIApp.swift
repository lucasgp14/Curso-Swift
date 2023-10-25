//
//  CicloSwiftUIApp.swift
//  CicloSwiftUI
//
//  Created by Lucas Gustavo Pérez on 17/10/2023.
//

import SwiftUI

@main
struct CicloSwiftUIApp: App {
    
    @Environment(\.scenePhase) var scenePhase
    
    var modelo = Modelo()
    
    init() {
        inicio()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelo)
        }.onChange(of: scenePhase) { (phase) in
            switch phase{
            case .active:
                print("Esta activo")
            case .inactive:
                print("Esta inactivo")
            case .background:
                print("Esta backgorund")
            @unknown default:
                fatalError("Algo salio mal")
            }
        }
    }
    
    func inicio(){
        print("Es el primero en ejecutarse")
    }
    
}
