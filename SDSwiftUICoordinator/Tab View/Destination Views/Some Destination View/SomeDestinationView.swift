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
    @State var viewModel: ViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.title)
            
            Button {
                viewModel.pushSomething()
            } label: {
                Text("Push Something")
            }
            
            Button {
                viewModel.presentSomeSheet()
            } label: {
                Text("Present Some Sheet")
            }
            
            Button {
                viewModel.presentSomeFullScreenCover()
            } label: {
                Text("Present Some Full Screen Cover")
            }
        }
    }
}
