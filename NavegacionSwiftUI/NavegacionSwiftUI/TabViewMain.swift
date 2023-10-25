//
//  TabViewMain.swift
//  NavegacionSwiftUI
//
//  Created by Lucas Gustavo Pérez on 09/10/2023.
//

import SwiftUI

struct TabViewMain: View {
    var body: some View {
        TabView{
            ContentView().tabItem{
                Label("Home", image: "house.fill")
            }
            Vista2().tabItem{
                Label("Vista 2", image: "plus")
            }
            TercerVista().tabItem{
                Label("Camara", image: "camera")
            }
        }
    }
}
