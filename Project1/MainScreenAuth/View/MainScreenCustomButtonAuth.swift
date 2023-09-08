//
//  MainScreenCustomButtonAuth.swift
//  Project1
//
//  Created by Роман Авдонин on 05.09.2023.
//

import SwiftUI

struct MainScreenCustomButtonAuth: View {
    @State var action: () -> ()
    
    var body: some View {
        Button {
            action()
        } label: {
            Text("ВОЙТИ")
                .padding(.horizontal, 8)
                .frame(height: 44)
                .frame(width: 255)
                .foregroundColor(.white)
                .background(.orange)
                .cornerRadius(22)
        }
    }
}
