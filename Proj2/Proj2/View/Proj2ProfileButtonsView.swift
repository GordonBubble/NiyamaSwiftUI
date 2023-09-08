//
//  Proj2ProfileButtonsView.swift
//  Proj2
//
//  Created by Роман Авдонин on 06.09.2023.
//

import SwiftUI

struct Proj2ProfileButtonsView: View {
    var body: some View {
        VStack {
            Proj2ProfileButtonView(icon: "ProfileIcon", text: "Личные данные")
                .padding(.top, 16)
            Proj2ProfileButtonView(icon: "OrdersIcon", text: "История заказов")
            Proj2ProfileButtonView(icon: "GeoIcon", text: "Список адресов")
            Proj2ProfileButtonView(icon: "ExitIcon", text: "Выйти")
            Spacer()
        }
        .background(Color.black)
    }
}

struct Proj2ProfileButtonView: View {
    let icon: String
    let text: String
    
    var body: some View {
        HStack {
            Button {} label: {
                Image(icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .padding(.leading, 20)
                Text(text)
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                    .padding(.leading, 25)
                Spacer()
            }
        }
    }
}
