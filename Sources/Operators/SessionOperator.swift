//
//  SessionOperator.swift
//  miniBanking_mock
//
//  Created by Bruno Vieira on 24/10/21.
//

import Foundation

struct SessionOperator {
    
    static let userDatabase = UserDatabase.shared
    
    static func login(
        username: String,
        password: String
    ) -> Data? {
        if let _ = userDatabase.getUser(
            username: username,
            password: password
        ) {
            return ResourceReader.getResource(.sessionLogin)
        } else {
            return nil
        }
    }
    
}

