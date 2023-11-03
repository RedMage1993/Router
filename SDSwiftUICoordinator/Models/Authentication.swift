//
//  Authentication.swift
//  SDSwiftUICoordinator
//
//  Created by Fritz Ammon on 11/3/23.
//

import Foundation

/// Really just putting this here as an example.
/// It's injected into the view hierarchy.
/// The first tab will show a login view while this is false.
/// The login view just shows a button to toggle it.
public class Authentication: Observable {
    @Published public var isLoggedIn = false
}
