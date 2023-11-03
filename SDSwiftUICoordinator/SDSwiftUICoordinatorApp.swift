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
    @State var tabCoordinator = TabCoordinator()
    @State var homePresentator: HomePresentator
    @State var authentication: Authentication
    
    private let authenticationObserver: AuthenticationObserver
    
    init() {
        let homePresentator = HomePresentator()
        let authentication = Authentication()
        
        authenticationObserver = AuthenticationObserver(
            authentication: authentication,
            homePresentator: homePresentator
        )
        
        authenticationObserver.startObservation()
        
        self.homePresentator = homePresentator
        self.authentication = authentication
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(tabCoordinator)
                .environment(homePresentator)
                .environment(authentication)
        }
    }
}
