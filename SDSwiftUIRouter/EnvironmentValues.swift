//
//  EnvironmentValues.swift
//  SDSwiftUIRouter
//
//  Created by Fritz Ammon on 11/3/23.
//

import Foundation
import SwiftUI

private struct UsingAnyNavigationRouterKey: EnvironmentKey {
    static var defaultValue: Bool?
}

extension EnvironmentValues {
    var usingAnyNavigationRouter: Bool? {
        get { self[UsingAnyNavigationRouterKey.self] }
        set { self[UsingAnyNavigationRouterKey.self] = newValue }
    }
}
