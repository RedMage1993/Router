//
//  SomeDestinationView+ViewModel.swift
//  SDSwiftUIRouter
//
//  Created by Fritz Ammon on 10/21/23.
//

import Foundation
import SwiftUI
import OSLog

private let logger = Logger(subsystem: "SDSwiftUIRouter", category: "SomeDestinationView")

extension SomeDestinationView {
    @Observable class ViewModel {
        let title: String
        
        public func doSomething() {
            logger.debug("Did Something")
        }
        
        init(title: String) {
            self.title = title
        }
    }
}
