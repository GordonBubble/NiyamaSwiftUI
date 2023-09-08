//
//  Proj2ProfileViewModel.swift
//  Proj2
//
//  Created by Роман Авдонин on 08.09.2023.
//

import Combine
import ServicesModule

class Proj2ProfileViewModel: ObservableObject {
    
    private let service = NetworkServiceModule()
    private let userToken = UserTokens()
    
    private var store = Set<AnyCancellable>()
    
    @Published var profileData = ProfileResponse()
    
    @Published var isShowing = false
    
    func fetchData() {
        guard let token = userToken.getAccessToken() else { return }
        
        service.getData(token: token)
            .sink { completion in
                switch completion {
                    
                case .finished:
                    print("")
                case .failure(let error):
                    print(error.localizedDescription)
                }
            } receiveValue: { [weak self] response in
                self?.profileData.email = response.email
                self?.profileData.phone = response.phone
                self?.profileData.name = response.name
                
                self?.isShowing = true
            }
            .store(in: &store)
    }
}
