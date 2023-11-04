//
//  AuthenticationObserver.swift
//  SDSwiftUIRouter
//
//  Created by Fritz Ammon on 11/3/23.
//

import Foundation
import Combine

class AuthenticationObserver {
    private let authentication: Authentication
    private let presentationRouter: DefaultPresentationRouter
    
    private var cancellables = Set<AnyCancellable>()
    
    init(authentication: Authentication, presentationRouter: DefaultPresentationRouter) {
        self.authentication = authentication
        self.presentationRouter = presentationRouter
    }
    
    func startObservation() {
        authentication.$isLoggedIn.sink { isLoggedIn in
            self.presentationRouter.fullScreenCover = isLoggedIn ? nil : .login
        }.store(in: &cancellables)
    }
}
