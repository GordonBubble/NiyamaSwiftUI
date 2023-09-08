//
//  ExtensionView.swift
//  Project1
//
//  Created by Роман Авдонин on 05.09.2023.
//

import SwiftUI

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
    
    func customNavBar(color: UIColor) {
        let navBarAppearance = UINavigationBar.appearance()
        navBarAppearance.topItem?.backBarButtonItem?.tintColor = color
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: color]
        navBarAppearance.titleTextAttributes = [.foregroundColor: color]
    }
}
