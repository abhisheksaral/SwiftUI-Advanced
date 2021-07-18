//
//  SwiftUI_AdvancedApp.swift
//  SwiftUI Advanced
//
//  Created by Abhishek Saral on 7/17/21.
//

import SwiftUI

@main
struct SwiftUI_AdvancedApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
