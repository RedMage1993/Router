//
//  NavigationDestinations.swift
//
//
//  Created by Fritz Ammon on 11/6/23.
//

import Foundation
import SwiftUI

struct NavigationDestinations<Router: NavigationRouter>: ViewModifier {
    let router: Router
    
    func body(content: Content) -> some View {
        router.navigationDestinations.reduce(AnyView(content)) {
            AnyView(
                AnyView($0)
                    .navigationDestination(for: $1.destinationType, destination: $1.navigationDestinationView)
            )
        }
    }
}
