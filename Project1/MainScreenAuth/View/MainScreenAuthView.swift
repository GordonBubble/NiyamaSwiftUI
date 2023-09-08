//
//  MainScreenAuthView.swift
//  Project1
//
//  Created by Роман Авдонин on 05.09.2023.
//

import SwiftUI

struct MainScreenAuthView: View {
    
    @StateObject private var viewModel = MainScreenViewModel()
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                VStack(spacing: 16) {
                    
                    Image("NiyamaLabel")
                        .padding(.top, 10)
                    
                    MainScreenRow(nameOfRow: "Email", textOfRow: $viewModel.email)
                        .padding(.top, 46)
                    
                    MainScreenRow(nameOfRow: "Password", textOfRow: $viewModel.password)
                    
                    Button("Забыли пароль?") {
                        print("password")
                    }
                    .font(.system(size: 14))
                    .foregroundColor(.gray)
                    .padding(.top, 15)
                    
                    MainScreenCustomButtonAuth(action: {
                        viewModel.authorize()
                    })
                    
                    
                    .padding(.top, 16)
                    
                    DividerView()
                        .padding(.top, 24)
                    
                    SocialNetworksButtonsView()
                        .padding(.top, 23)
                    
                    Text("Регистрация")
                        .padding(.top, 20)
                        .font(.system(size: 14))
                        .foregroundColor(.gray)
                    
                }
                .padding(33)
                .background(Image("BackgroundMainImage")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .edgesIgnoringSafeArea([.top, .bottom])
                    .frame(height: UIScreen.main.bounds.height))
                
                ProgressView()
                    .opacity(viewModel.isAnimateSpinner ? 1 : 0)
                
                    .navigationTitle("Авторизация")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationDestination(isPresented: $viewModel.navigateToNextView) {
                        ProfileScreenView()
                    }
            }
            .alert(isPresented: $viewModel.isAlertPresented) {
                Alert(title: Text("Ошибка!"), message: Text("Произошла ошибка, попробуйте снова"), dismissButton: .default(Text("Ok"), action: {
                    viewModel.isAnimateSpinner = false
                    viewModel.navigateToNextView = false
                }))
            }
            .onDisappear(perform: {
                viewModel.isAnimateSpinner = false
            })
        }
        .tint(.white)
    }
    
    init() {
        self.customNavBar(color: .white)
    }
}

struct MainScreenAuthView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenAuthView()
    }
}
