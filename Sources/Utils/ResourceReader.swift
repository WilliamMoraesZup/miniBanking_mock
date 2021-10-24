//
//  ResourceReader.swift
//  miniBanking_mock
//
//  Created by Bruno Vieira on 24/10/21.
//

import Foundation

class ResourceReader {
    
    enum Resource: String {
        
        case sessionLogin = "session_login"
        case accountStatementList = "account_statement_list"
        case accountWalletAdd = "account_wallet_add"
        case cardRequest = "card_request"
        case cardStatementList = "card_statement_list"
        case customerServiceFAQList = "customerSerivice_faq_list"
        case paymentPayBill = "payment_payBill"
        case pixManagementRegisterKey = "pix_management_registerKey"
        case pixOperationQRCodeGenerate = "pix_operation_qrCode_generate"
        case pixOperationQRCodePay = "pix_operation_qrCode_pay"
        
    }
    
    static func getResource(_ resource: Resource) -> Data? {
        if let path = Bundle(for: ResourceReader.self).path(
            forResource: resource.rawValue,
            ofType: ".json"
        ) {
            let url = URL(fileURLWithPath: path)
            let data = try? Data(contentsOf: url)
            return data
        }
        return nil
    }
    
}
