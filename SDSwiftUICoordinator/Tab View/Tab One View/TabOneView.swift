//
//  TabOneView.swift
//  SDSwiftUICoordinator
//
//  Created by Fritz Ammon on 10/21/23.
//

import Foundation
import SwiftUI
import Coordinator

struct TabOneView: View {
    @Environment(DefaultNavigationCoordinator.self) var navigationCoordinator
    @State var viewModel: ViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.title)
            
            Button {
                navigationCoordinator.push(destination: .destinationOne)
            } label: {
                Text("Push Something")
            }
        }
    }
}
