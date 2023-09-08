//
//  SocialNetworksButtons.swift
//  Project1
//
//  Created by Роман Авдонин on 05.09.2023.
//

import SwiftUI

struct SocialNetworksButtonsView: View {
    
    var body: some View {
        HStack {
            Button {
                print("FACEBOOK")
            } label: {
                Image("Facebook")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 45, height: 45)
            }
            Button {
                print("VK")
            } label: {
                Image("VK")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 45, height: 45)
            }
            .padding(.horizontal, 37)
            Button {
                print("GOOGLE")
            } label: {
                Image("Google")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 45, height: 45)
            }
        }
    }
}

