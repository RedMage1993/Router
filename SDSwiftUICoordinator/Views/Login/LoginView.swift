//
//  LoginView.swift
//  SDSwiftUICoordinator
//
//  Created by Fritz Ammon on 11/3/23.
//

import Foundation
import SwiftUI

/// Simply toggles the isLoggedIn state for an example.
struct LoginView: View {
    @Environment(Authentication.self) var authentication
    
    var body: some View {
        Button {
            authentication.isLoggedIn = true
        } label: {
            Text("Log In")
        }
    }
}
