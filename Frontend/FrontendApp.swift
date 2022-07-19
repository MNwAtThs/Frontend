//
//  FrontendApp.swift
//  Frontend
//
//  Created by Sergio Deleon Jr. on 7/19/22.
//

import SwiftUI

@main
struct FrontendApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
