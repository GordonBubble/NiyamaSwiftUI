//
//  ProfileScreenView.swift
//  Project1
//
//  Created by Роман Авдонин on 06.09.2023.
//

import SwiftUI
import Proj2

struct ProfileScreenView: View {
    
    @StateObject private var viewModel = ProfileScreenViewModel()
    
    @State private var buttonSelection = 0
    
    @State private var isAdmin = false
    
    var body: some View {
        NavigationStack {
            if viewModel.isShowing {
                VStack {
                    
                    ZStack(alignment: .top) {
                        HStack(spacing: 16) {
                            
                            Button("Project1") {
                                buttonSelection = 0
                            }
                            .foregroundColor(buttonSelection == 0 ? .orange : .white)
                            
                            Button("Project2") {
                                buttonSelection = 1
                            }
                            .foregroundColor(buttonSelection == 1 ? .orange : .white)
                            
                        }.padding(.top, 16)
                            .opacity(isAdmin ? 1 : 0)
                        
                        Button {
                            isAdmin.toggle()
                        } label: {
                            Text(isAdmin ? "You are admin" : "Not admin")
                        }
                        .padding(.top, 50)
                        .foregroundColor(isAdmin ? .orange : .white)
                    }
                    
                    if buttonSelection == 0 {
                        
                        ProfileScreenInfoView(profileData: viewModel.profileData)
                            .padding(.top, 25)
                        Spacer()
                        ProfileScreenButtonsView()
                    } else {
                        Proj2ProfileView()
                    }

                }
                .background(
                    Image("BackgroundMainImage")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea())
                .navigationTitle("Личный кабинет")
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    Button {} label: {
                        Image("Basket")
                    }
                }
            }
        }
        .tint(.white)
        .onAppear {
            viewModel.fetchData()
            
        }
    }
    
    
    init() {
        customNavBar(color: .white)
    }
    
}

struct ProfileScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreenView()
    }
}
