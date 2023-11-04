//
//  SDSwiftUIRouterApp.swift
//  SDSwiftUIRouter
//
//  Created by Fritz Ammon on 10/21/23.
//

import SwiftUI
import Router

@main
struct SDSwiftUIRouterApp: App {
    @State var tabRouter = DefaultTabRouter()
    @State var presentationRouter: DefaultPresentationRouter
    @State var authentication: Authentication
    
    private let authenticationObserver: AuthenticationObserver
    
    init() {
        let presentationRouter = DefaultPresentationRouter()
        let authentication = Authentication()
        
        authenticationObserver = AuthenticationObserver(
            authentication: authentication,
            presentationRouter: presentationRouter
        )
        
        authenticationObserver.startObservation()
        
        self.presentationRouter = presentationRouter
        self.authentication = authentication
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(tabRouter)
                .environment(presentationRouter)
                .environment(authentication)
        }
    }
}
