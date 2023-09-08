//
//  UserToken.swift
//  Project1
//
//  Created by Роман Авдонин on 05.09.2023.
//

import Foundation
import KeychainSwift

final public class UserTokens {

    private var keychain = KeychainSwift()

    private enum Keys {
        static let accessToken = "accessToken"
        static let refreshToken = "refreshToken"
    }
    
    public init() {}

    // MARK: - Access Token
    

    public func setAccessToken(with token: String) {
        keychain.set(token, forKey: Keys.accessToken)
    }

    public func getAccessToken() -> String? {
        keychain.get(Keys.accessToken)
    }

    public func removeAccessToken() {
        keychain.delete(Keys.accessToken)
    }

    // MARK: - Refresh Token

    public func setRefreshToken(with token: String) {
        keychain.set(token, forKey: Keys.refreshToken)
    }

    public func getRefreshToken() -> String? {
        keychain.get(Keys.refreshToken)
    }

}
