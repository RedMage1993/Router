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
    @Environment(HomeRouter.self) var homeRouter
    @State var viewModel: ViewModel
    
    var body: some View {
        VStack {
            Text(viewModel.title)
            
            Button {
                homeRouter.push(destination: .destinationOne)
            } label: {
                Text("Push Something")
            }
        }
    }
}
