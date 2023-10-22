//
//  DefaultRootCoordinator.swift
//  SDSwiftUICoordinator
//
//  Created by Fritz Ammon on 10/21/23.
//

import Foundation
import SwiftUI
import Coordinator

@Observable class DefaultRootCoordinator: RootCoordinator {
    typealias Destination = CoordinatedDestination
    
    var path = NavigationPath()
    
    var sheet: CoordinatedSheet?
    var fullScreenCover: CoordinatedFullScreenCover?
    
    @ViewBuilder
    func navigationDestinationView(for destination: Destination) -> some View {
        switch destination {
        case .destinationOne:
            SomeDestinationView(viewModel: .init(coordinator: self, title: "Some Destination View"))
        }
    }
    
    @ViewBuilder
    func sheetView(for sheet: CoordinatedSheet) -> some View {
        switch sheet {
        case .someSheet:
            Text("Some Sheet")
        }
    }

    @ViewBuilder
    func fullScreenCoverView(for fullScreenCover: CoordinatedFullScreenCover) -> some View {
        switch fullScreenCover {
        case .nothing:
            EmptyView()
        }
    }
}

extension DefaultRootCoordinator {
    enum CoordinatedDestination: Hashable {
        case destinationOne
    }
    
    enum CoordinatedSheet: Identifiable {
        case someSheet
        
        public var id: String { String(describing: self) }
    }
    
    enum CoordinatedFullScreenCover: Identifiable {
        case nothing
        
        public var id: String { String(describing: self) }
    }
}
