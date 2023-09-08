//
//  CustomDivider.swift
//  Project1
//
//  Created by Роман Авдонин on 05.09.2023.
//

import SwiftUI

struct CustomDivider: View {
    let height: CGFloat = 1
    let color: Color = .white
    let opacity: Double = 0.2
    
    var body: some View {
        Group {
            Rectangle()
        }
        .frame(height: height)
        .foregroundColor(color)
        .opacity(opacity)
    }
}
