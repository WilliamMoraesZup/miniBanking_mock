//
//  UserData.swift
//  miniBanking_mock
//
//  Created by Bruno Vieira on 23/10/21.
//

import Foundation

struct UserData {
    
    let username: String
    let password: String
    let accountId: String
    
}

extension UserData {
    
    static var mockCaico: UserData {
        return UserData(username: "caico", password: "abc123", accountId: "C954B168-750D-4E51-B399-8F8B229195AE")
    }
    
    static var mockCarol: UserData {
        return UserData(username: "carol", password: "abc123", accountId: "D50D14F0-41EC-4137-8747-92FEE7872193")
    }
    
    static var mockGiovanni: UserData {
        return UserData(username: "giovanni", password: "abc123", accountId: "BCD7546D-E966-4DAE-86A9-C0BF1A35B892")
    }
    
    static var mockRomulo: UserData {
        return UserData(username: "romulo", password: "abc123", accountId: "E491A23E-6BEB-470B-933A-9871BF8075BD")
    }
    
    static var mockSaulo: UserData {
        return UserData(username: "saulo", password: "abc123", accountId: "F26D8499-9608-4A37-9091-4DE4C349B79D")
    }
    
    static var mockWilliam: UserData {
        return UserData(username: "william", password: "abc123", accountId: "289BB2EC-3F8C-4307-8C3D-C0E911CCD472")
    }
    
}
