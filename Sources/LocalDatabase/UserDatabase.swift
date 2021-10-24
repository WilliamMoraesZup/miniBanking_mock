//
//  UserDatabase.swift
//  miniBanking_mock
//
//  Created by Bruno Vieira on 23/10/21.
//

import Foundation

class UserDatabase {
    
    static let shared = UserDatabase()
    
    private var users: [UserData]
    
    private init() {
        users = [
            .mockCaico,
            .mockCarol,
            .mockGiovanni,
            .mockRomulo,
            .mockSaulo,
            .mockWilliam
        ]
    }
    
    func getUser(
        username: String,
        password: String
    ) -> UserData? {
        return users.first(where: {
            $0.username == username && $0.password == password
        })
    }
    
}
