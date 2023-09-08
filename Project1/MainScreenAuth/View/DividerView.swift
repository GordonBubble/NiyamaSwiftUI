//
//  DividerView.swift
//  Project1
//
//  Created by Роман Авдонин on 05.09.2023.
//

import SwiftUI

struct DividerView: View {
    
    var body: some View {
        HStack(alignment: .center) {
            Spacer()
                .frame(height: 1)
                .background(Color.gray)
            Text("или с помощью соц. сетей")
                .foregroundColor(.gray)
                .font(.system(size: 14))
                .lineLimit(1)
                .fixedSize()
                .padding(.horizontal, 13)
            Spacer()
                .frame(height: 1)
                .background(Color.gray)
        }
    }
}

