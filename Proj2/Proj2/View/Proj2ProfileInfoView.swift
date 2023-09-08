//
//  Proj2ProfileInfoView.swift
//  Proj2
//
//  Created by Роман Авдонин on 06.09.2023.
//

import SwiftUI
import ServicesModule

struct Proj2ProfileInfoView: View {
    
    @State var profileData: ProfileResponse
    
    var body: some View {
        VStack {
            Image("NoPhoto")
                .resizable()
                .scaledToFill()
                .frame(width: 110, height: 110)
                .cornerRadius(.infinity)
            Text(profileData.name ?? "-")
                .font(.system(size: 24))
                .foregroundColor(.white)
                .padding(.top, 17)
            Text(profileData.email ?? "-")
                .font(.system(size: 18))
                .foregroundColor(.gray)
                .padding(.top, 24)
            Text(profileData.phone ?? "-")
                .font(.system(size: 18))
                .foregroundColor(.orange)
                .padding(.bottom, 32)
            
        }
    }
}
