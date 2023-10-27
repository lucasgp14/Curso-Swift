//
//  JSONApp.swift
//  JSON
//
//  Created by Lucas Gustavo Pérez on 27/10/2023.
//

import SwiftUI

@main
struct JSONApp: App {
    var body: some Scene {
        
        let login = PostViewModel()
        
        WindowGroup {
            ContentView().environmentObject(login)
        }
    }
}
