//
//  NavigationDestination.swift
//
//
//  Created by Fritz Ammon on 11/6/23.
//

import Foundation
import SwiftUI

struct NavigationDestination<Router: NavigationRouter>: ViewModifier {
    let router: Router
    
    func body(content: Content) -> some View {
        content
            .navigationDestination(for: Router.Factory.Destination.self, destination: router.destinationViewFactory.view)
    }
}
