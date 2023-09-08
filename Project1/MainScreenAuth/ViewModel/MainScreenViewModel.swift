//
//  MainScreenViewModel.swift
//  Project1
//
//  Created by Роман Авдонин on 05.09.2023.
//

import Foundation
import Combine
import ServicesModule

class MainScreenViewModel: ObservableObject {
    
    @Published var isAnimateSpinner = false
    
    @Published var navigateToNextView = false
        
    @Published var isAlertPresented = false
    
    @Published var email = ""
    @Published var password = ""
        
    private var store = Set<AnyCancellable>()
    
    private let userToken = UserTokens()
    private let service = NetworkServiceModule()
    
    func authorize() {
        isAnimateSpinner = true
        let userData = UserAuthModel(password: password, email: email)
        service.authorize(userData: userData)
            .sink { [weak self] completion in
                print(completion)
                switch completion {
                case .finished:
                    print("finish")
                case .failure:
                    self?.isAlertPresented = true
                }
                self?.navigateToNextView = true
            } receiveValue: { [weak self] token in
                print(token)
                self?.userToken.setAccessToken(with: token.accessToken)
            }
            .store(in: &store)

    }
}
