//
//  CoordinatedPresentationView.swift
//  SDSwiftUICoordinator
//
//  Created by Fritz Ammon on 6/3/23.
//

import Foundation
import SwiftUI

public struct CoordinatedPresentationView<Root: View, Coordinator: PresentationCoordinator>: View {
    let rootView: Root
    @Bindable var coordinator: Coordinator
    
    public init(coordinator: Coordinator, @ViewBuilder _ rootView: () -> Root) {
        self.rootView = rootView()
        self.coordinator = coordinator
    }
    
    public var body: some View {
        rootView
            .sheet(item: $coordinator.sheet, content: coordinator.sheetView)
            .fullScreenCover(item: $coordinator.fullScreenCover, content: coordinator.fullScreenCoverView)
    }
}
