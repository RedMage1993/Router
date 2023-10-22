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
    
    var body: some View {
        CoordinatedTabView(coordinator: tabViewCoordinator)
    }
}

#Preview {
    ContentView()
}
