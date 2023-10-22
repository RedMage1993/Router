//
//  ContentView.swift
//  SDSwiftUICoordinator
//
//  Created by Fritz Ammon on 10/21/23.
//

import SwiftUI
import Coordinator

struct ContentView: View {
    @Environment(DefaultTabViewCoordinator.self) var tabViewCoordinator
    @Environment(DefaultPresentationCoordinator.self) var presentationCoordinator
    
    var body: some View {
        CoordinatedPresentationView(coordinator: presentationCoordinator) {
            CoordinatedTabView(coordinator: tabViewCoordinator)
        }
    }
}

#Preview {
    ContentView()
}
