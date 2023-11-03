//
//  CoordinatedTabView.swift
//  SDSwiftUICoordinator
//
//  Created by Fritz Ammon on 5/23/23.
//

import Foundation
import SwiftUI

public struct CoordinatedTabView<Coordinator: TabViewCoordinator>: View {
    @Bindable var coordinator: Coordinator
    
    public init(coordinator: Coordinator) {
        self.coordinator = coordinator
    }
    
    public var body: some View {
        TabView(selection: $coordinator.selectedTab) {
            ForEach(coordinator.tabItems) {
                coordinator.tabView(for: $0)
                    .tag($0)
            }
        }
    }
}
