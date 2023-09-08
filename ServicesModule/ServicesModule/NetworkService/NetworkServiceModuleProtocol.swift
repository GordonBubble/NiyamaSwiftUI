//
//  NetworkServiceProtocol.swift
//  ServicesModule
//
//  Created by Роман Авдонин on 07.09.2023.
//

import Combine
import Alamofire

protocol NetworkServiceModuleProtocol {
    func authorize(userData: UserAuthModel) -> AnyPublisher<AuthResponse, Error>
    func getData(token: String) -> AnyPublisher<ProfileResponse, AFError>
}

