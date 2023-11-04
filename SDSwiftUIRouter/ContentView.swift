//
//  ContentView.swift
//  SDSwiftUIRouter
//
//  Created by Fritz Ammon on 10/21/23.
//

import SwiftUI
import Router

struct ContentView: View {
    @Environment(DefaultTabRouter.self) var tabRouter
    @Environment(DefaultPresentationRouter.self) var presentationRouter
    
    var body: some View {
        RoutedPresentationView(router: presentationRouter) {
            RoutedTabView(router: tabRouter)
        }
    }
}

#Preview {
    ContentView()
}
