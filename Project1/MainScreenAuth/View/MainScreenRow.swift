//
//  MainScreenRow.swift
//  Project1
//
//  Created by Роман Авдонин on 05.09.2023.
//

import SwiftUI

struct MainScreenRow: View {
    
    @State var nameOfRow: String
    @Binding var textOfRow: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(nameOfRow)
                .font(Font.system(size: 12))
                .foregroundColor(.white)
            
            TextField(nameOfRow, text: $textOfRow)
                .placeholder(when: textOfRow.isEmpty, placeholder: {
                    Text(nameOfRow).foregroundColor(.white)
                })
                .foregroundColor(.white)
                .font(Font.system(size: 16))
            
            CustomDivider()
        }
        .listRowBackground(Color.black)
    }
}
