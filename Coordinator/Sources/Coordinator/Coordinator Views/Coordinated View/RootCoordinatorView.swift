//
//  RootCoordinatorView.swift
//  sd-ios-swiftui
//
//  Created by Fritz Ammon on 6/3/23.
//

import Foundation
import SwiftUI

public typealias RootCoordinator = NavigationCoordinator & PresentationCoordinator

public struct RootCoordinatorView<Root: View, Coordinator: RootCoordinator>: View {
    let rootView: Root
    @Bindable var coordinator: Coordinator
    
    public init(coordinator: Coordinator, @ViewBuilder _ rootView: () -> Root) {
        self.rootView = rootView()
        self.coordinator = coordinator
    }
    
    public var body: some View {
        NavigationStack(path: $coordinator.path) {
            rootView
                .sheet(item: $coordinator.sheet, content: coordinator.sheetView)
                .fullScreenCover(item: $coordinator.fullScreenCover, content: coordinator.fullScreenCoverView)
                .navigationDestination(for: Coordinator.Destination.self, destination: coordinator.navigationDestinationView)
        }
    }
}
