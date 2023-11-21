//
//  PresentationRouter.swift
//
//
//  Created by Fritz Ammon on 5/23/23.
//

import Foundation
import SwiftUI

public protocol PresentationRouter: AnyObject, Observable {
    associatedtype Sheet: Identifiable
    associatedtype FullScreenCover: Identifiable
    associatedtype SheetView: View
    associatedtype FullScreenCoverView: View
    
    var sheet: Sheet? { get set }
    var fullScreenCover: FullScreenCover? { get set }
    
    func sheetView(for: Sheet) -> SheetView
    func fullScreenCoverView(for: FullScreenCover) -> FullScreenCoverView
}

public extension PresentationRouter {
    func present(sheet: Sheet) {
        self.sheet = sheet
    }
    
    func present(fullScreenCover: FullScreenCover) {
        self.fullScreenCover = fullScreenCover
    }
    
    func dismissSheet() {
        sheet = nil
    }
    
    func dismissFullScreenCover() {
        fullScreenCover = nil
    }
}
