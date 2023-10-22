//
//  RootCoordinatorView.swift
//  sd-ios-swiftui
//
//  Created by Fritz Ammon on 6/3/23.
//

import Foundation
import SwiftUI

public struct CoordinatedNavigationView<Root: View, Coordinator: NavigationCoordinator>: View {
    let rootView: Root
    @Bindable var coordinator: Coordinator
    
    public init(coordinator: Coordinator, @ViewBuilder _ rootView: () -> Root) {
        self.rootView = rootView()
        self.coordinator = coordinator
    }
    
    public var body: some View {
        NavigationStack(path: $coordinator.path) {
            rootView
                .navigationDestination(for: Coordinator.Destination.self, destination: coordinator.navigationDestinationView)
        }
    }
}
