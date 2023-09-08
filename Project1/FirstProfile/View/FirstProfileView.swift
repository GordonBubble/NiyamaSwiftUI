//
//  FirstProfileView.swift
//  Project1
//
//  Created by Роман Авдонин on 05.09.2023.
//

import SwiftUI

struct FirstProfileView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
    }
}

struct FirstProfileView_Previews: PreviewProvider {
    static var previews: some View {
        FirstProfileView()
    }
}
