//
//  SDSwiftUICoordinatorApp.swift
//  SDSwiftUICoordinator
//
//  Created by Fritz Ammon on 10/21/23.
//

import SwiftUI
import Coordinator

@main
struct SDSwiftUICoordinatorApp: App {
    @State var tabViewCoordinator = DefaultTabViewCoordinator()
    @State var presentationCoordinator = DefaultPresentationCoordinator()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(tabViewCoordinator)
                .environment(presentationCoordinator)
        }
    }
}
