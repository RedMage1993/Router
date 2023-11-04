//
//  DefaultPresentationRouter.swift
//  SDSwiftUIRouter
//
//  Created by Fritz Ammon on 10/21/23.
//

import Foundation
import SwiftUI
import Router

@Observable class DefaultPresentationRouter: PresentationRouter {
    var sheet: RoutedSheet?
    var fullScreenCover: RoutedFullScreenCover?
    
    @ViewBuilder
    func sheetView(for sheet: RoutedSheet) -> some View {
        switch sheet {
        case .someSheet:
            Text("Some Sheet")
        }
    }

    @ViewBuilder
    func fullScreenCoverView(for fullScreenCover: RoutedFullScreenCover) -> some View {
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

extension DefaultPresentationRouter {
    enum RoutedSheet: Identifiable {
        case someSheet
        
        public var id: String { String(describing: self) }
    }
    
    enum RoutedFullScreenCover: Identifiable {
        case someFullScreenCover
        case login
        
        public var id: String { String(describing: self) }
    }
}
