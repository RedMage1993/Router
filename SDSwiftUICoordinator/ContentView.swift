//
//  ContentView.swift
//  SDSwiftUICoordinator
//
//  Created by Fritz Ammon on 10/21/23.
//

import SwiftUI
import Coordinator

struct ContentView: View {
    @Environment(TabCoordinator.self) var tabCoordinator
    @Environment(HomePresentator.self) var homePresentator
    
    var body: some View {
        CoordinatedPresentationView(coordinator: homePresentator) {
            CoordinatedTabView(coordinator: tabCoordinator)
        }
    }
}

#Preview {
    ContentView()
}
