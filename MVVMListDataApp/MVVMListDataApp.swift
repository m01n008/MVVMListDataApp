//
//  MVVMListDataAppApp.swift
//  MVVMListDataApp
//
//  Created by Muhammad Moin Raza Khan on 01/08/2024.
//

import SwiftUI

@main
struct MVVMListDataAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
