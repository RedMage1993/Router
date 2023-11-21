//
//  RoutedPresentationView.swift
//
//
//  Created by Fritz Ammon on 6/3/23.
//

import Foundation
import SwiftUI

public struct RoutedPresentationView<Root: View, Router: PresentationRouter>: View {
    let rootView: Root
    @Bindable var router: Router
    
    public init(router: Router, @ViewBuilder _ rootView: () -> Root) {
        self.rootView = rootView()
        self.router = router
    }
    
    public var body: some View {
        rootView
            .sheet(item: $router.sheet, content: router.sheetView)
            .fullScreenCover(item: $router.fullScreenCover, content: router.fullScreenCoverView)
    }
}
