//
//  Proj2ProfileView.swift
//  Proj2
//
//  Created by Роман Авдонин on 06.09.2023.
//

import SwiftUI

public struct Proj2ProfileView: View {
    
    @ObservedObject private var viewModel = Proj2ProfileViewModel()
        
    public var body: some View {
        NavigationStack {
            VStack {
                if viewModel.isShowing {
                    Proj2ProfileInfoView(profileData: viewModel.profileData)
                        .padding(.top, 25)
                    Spacer()
                    Proj2ProfileButtonsView()
                } else {
                    ProgressView()
                }
            }
        }
        .onAppear {
            viewModel.fetchData()
        }
        
    }
    private func setCustomNavBar() {
        let navBar = UINavigationBar.appearance()
        navBar.titleTextAttributes = [
            .font: UIFont.systemFont(ofSize: 17),
            .foregroundColor: UIColor.white
        ]
    }
    
    public init() {
        setCustomNavBar()
    }
}

struct Proj2ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        Proj2ProfileView()
    }
}
