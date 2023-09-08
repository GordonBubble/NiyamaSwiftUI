//
//  ExtensionString.swift
//  ServicesModule
//
//  Created by Роман Авдонин on 07.09.2023.
//

import Foundation

extension String {
    func appendingPath(_ path: String = "") -> String {
        self + "/" + path
    }
}
