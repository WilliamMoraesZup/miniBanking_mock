//
//  Mock.swift
//  miniBanking_mock
//
//  Created by Bruno Vieira on 23/10/21.
//

import Foundation

public struct Mock {
    
    public static func operate(request: URLRequest) -> Data? {
        guard let path = request.url?.path
                .replacingOccurrences(of: "miniBanking.mock/", with: "")
        else { return nil }
        switch path {
        case "session/login":
            let dictionary = dictionary(from: request)
            return SessionOperator.login(
                username: dictionary["username"] as? String ?? "",
                password: dictionary["password"] as? String ?? ""
            )
        default:
            return nil
        }
    }
    
    private static func dictionary(from request: URLRequest) -> [String: Any] {
        if let data = request.httpBody,
           let dictionary = try? JSONSerialization.jsonObject(with: data, options: []) as? [String : Any] {
            return dictionary
        } else {
            return [:]
        }
    }
    
}

