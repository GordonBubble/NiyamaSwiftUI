//
//  NetworkService.swift
//  ServicesModule
//
//  Created by Роман Авдонин on 07.09.2023.
//

import Foundation
import Alamofire
import Combine

public class NetworkServiceModule: NetworkServiceModuleProtocol {
    private var cancellable = Set<AnyCancellable>()
    public init() { }
    
    public func authorize(userData: UserAuthModel) -> AnyPublisher<AuthResponse, Error> {
        let parameters = ["email": userData.email, "password": userData.password]
        return AF.request(Api.apiUrl.appendingPath(Api.auth).appendingPath(Api.login),
                          method: .post,
                          parameters: parameters,
                          encoding: JSONEncoding.default)
        .publishDecodable(type: AuthResponse.self)
        .value()
        .mapError { $0 as Error }
        .receive(on: DispatchQueue.main)
        .eraseToAnyPublisher()
        
    }
    
    public func getData(token: String) -> AnyPublisher<ProfileResponse, AFError> {
        
        let headers = HTTPHeaders(["Authorization": token])
        return AF.request(Api.apiUrl.appendingPath(Api.profile).appendingPath(Api.details),
                          method: .get, headers: headers)
        .validate()
        .publishDecodable(type: ProfileResponse.self)
        .value()
        .map { res in
            return res
        }
        .receive(on: DispatchQueue.main)
        .eraseToAnyPublisher()
    }
}

//extension NetworkServiceModule: NetworkServiceModuleProtocol {
//    
//
//}

