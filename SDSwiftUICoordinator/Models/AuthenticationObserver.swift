//
//  AuthenticationObserver.swift
//  SDSwiftUICoordinator
//
//  Created by Fritz Ammon on 11/3/23.
//

import Foundation
import Combine

class AuthenticationObserver {
    private let authentication: Authentication
    private let homePresentator: HomePresentator
    
    private var cancellables = Set<AnyCancellable>()
    
    init(authentication: Authentication, homePresentator: HomePresentator) {
        self.authentication = authentication
        self.homePresentator = homePresentator
    }
    
    func startObservation() {
        authentication.$isLoggedIn.sink { isLoggedIn in
            self.homePresentator.fullScreenCover = isLoggedIn ? nil : .login
        }.store(in: &cancellables)
    }
}
