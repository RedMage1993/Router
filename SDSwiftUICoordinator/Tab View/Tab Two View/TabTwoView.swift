//
//  TabTwoView.swift
//  SDSwiftUICoordinator
//
//  Created by Fritz Ammon on 10/21/23.
//

import Foundation
import SwiftUI
import Coordinator

struct TabTwoView: View {
    @State var viewModel: ViewModel
    
    var body: some View {
        Text(viewModel.title)
        
        Button {
            viewModel.pushSomething()
        } label: {
            Text("Push Something")
        }
    }
}
