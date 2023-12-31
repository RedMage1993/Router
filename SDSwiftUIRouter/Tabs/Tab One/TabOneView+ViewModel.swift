//
//  TabOneView+ViewModel.swift
//  SDSwiftUIRouter
//
//  Created by Fritz Ammon on 10/21/23.
//

import Foundation
import SwiftUI

extension TabOneView {
    @Observable class ViewModel {
        let title: String
        
        init(title: String) {
            self.title = title
        }
    }
}
