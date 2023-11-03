//
//  HomePresentator.swift
//  SDSwiftUICoordinator
//
//  Created by Fritz Ammon on 10/21/23.
//

import Foundation
import SwiftUI
import Coordinator

/// The default home presentator. It handles presentation things like sheet and fullScreenCover.
/// Does not require a navigation stack and therefore is owned separately from a navigation coordinator.
/// You also only typically have one of these.
@Observable class HomePresentator: PresentationCoordinator {
    var sheet: CoordinatedSheet?
    var fullScreenCover: CoordinatedFullScreenCover?
    
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
        case .someFullScreenCover:
            VStack {
                Text("Some Full Screen Cover")
                Button {
                    self.dismissFullScreenCover()
                } label: {
                    Text("Dismiss")
                }
            }
        case .login:
            LoginView()
        }
    }
}

extension HomePresentator {
    enum CoordinatedSheet: Identifiable {
        case someSheet
        
        public var id: String { String(describing: self) }
    }
    
    enum CoordinatedFullScreenCover: Identifiable {
        case someFullScreenCover
        case login
        
        public var id: String { String(describing: self) }
    }
}
