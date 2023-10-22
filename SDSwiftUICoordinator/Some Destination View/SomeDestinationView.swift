//
//  SomeDestinationView.swift
//  SDSwiftUICoordinator
//
//  Created by Fritz Ammon on 10/21/23.
//

import Foundation
import SwiftUI
import Coordinator

struct SomeDestinationView: View {
    @Environment(DefaultPresentationCoordinator.self) var presentationCoordinator
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
            
            Button {
                presentationCoordinator.present(sheet: .someSheet)
            } label: {
                Text("Present Some Sheet")
            }
            
            Button {
                presentationCoordinator.present(fullScreenCover: .someFullScreenCover)
            } label: {
                Text("Present Some Full Screen Cover")
            }
        }
    }
}
