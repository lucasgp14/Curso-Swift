//
//  NotasApp.swift
//  Notas
//
//  Created by Lucas Gustavo Pérez on 20/10/2023.
//

import SwiftUI

@main
struct NotasApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
