//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Putut Yusri Bahtiar on 12/02/23.
//

import SwiftUI

@main
struct BookwormApp: App {
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
