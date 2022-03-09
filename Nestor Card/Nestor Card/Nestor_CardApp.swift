//
//  Nestor_CardApp.swift
//  Nestor Card
//
//  Created by Nestor on 9/3/22.
//

import SwiftUI

@main
struct Nestor_CardApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
