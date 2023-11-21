//
//  View+Extensions.swift
//
//
//  Created by Fritz Ammon on 11/6/23.
//

import Foundation
import SwiftUI

public extension View {
    func navigationDestinations<Router: NavigationRouter>(router: Router) -> some View {
        modifier(NavigationDestination(router: router))
    }
}
