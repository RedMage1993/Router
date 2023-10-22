//
//  TabOneView+ViewModel.swift
//  SDSwiftUICoordinator
//
//  Created by Fritz Ammon on 10/21/23.
//

import Foundation
import SwiftUI
import Coordinator

extension TabOneView {
    @Observable class ViewModel {
        private weak var coordinator: DefaultRootCoordinator?
        
        let title: String
        
        init(coordinator: DefaultRootCoordinator, title: String) {
            self.coordinator = coordinator
            self.title = title
        }
        
        func pushSomething() {
            coordinator?.push(destination: .destinationOne)
        }
    }
}
