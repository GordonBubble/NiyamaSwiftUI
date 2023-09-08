//
//  Models.swift
//  ServicesModule
//
//  Created by Роман Авдонин on 07.09.2023.
//

import Foundation
import Alamofire

// Network errors
public struct NetworkError: Error {
    public let initialError: AFError
    public let backendError: BackendError?
    
    public init(initialError: AFError, backendError: BackendError) {
        self.initialError = initialError
        self.backendError = backendError
    }
}

public struct BackendError: Codable, Error {
    public var status: String
    public var message: String
    
    public init(status: String, message: String) {
        self.status = status
        self.message = message
    }
}

// User Model

public struct UserAuthModel: Codable {
    public var password: String
    public var email: String
    
    public init(password: String, email: String) {
        self.password = password
        self.email = email
    }
}

//Auth Model

public struct AuthResponse: Codable {
    public let accessToken: String
    
    public init(accessToken: String) {
        self.accessToken = accessToken
    }
}

// Profile model

public struct ProfileResponse: Codable {
    public var name: String?
    public var imageUrl: String?
    public var phone: String?
    public var email: String?
    public var password: String?
    public var birthday: String?
    
    public init(name: String? = nil, imageUrl: String? = nil, phone: String? = nil, email: String? = nil, password: String? = nil, birthday: String? = nil) {
        self.name = name
        self.imageUrl = imageUrl
        self.phone = phone
        self.email = email
        self.password = password
        self.birthday = birthday
    }
}
