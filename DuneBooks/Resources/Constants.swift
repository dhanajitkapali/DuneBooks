//
//  Constants.swift
//  DuneBooks
//
//  Created by unthinkable-mac-0025 on 23/08/22.
//

import Foundation

struct Constant{
    
    struct ErrorMessage {
        static let SOMETHING_WENT_WRONG = "Something went wrong, please try again later"
        static let NO_VIEW_CONTROLLER_FOUND_FOR_THIS_IDENTIFIER = "No view controller found with that identifier"
        static let NAVIGATION_CONTROLLER_IS_NIL = "Navigation controller is nil"
        static let NO_NIB_FOUND_WITH_THHIS_NAME = "No nib found with that name"
    }
    
    struct TextMessage {
        static let ALERT = "Alert"
        static let OK = "OK"
        static let EMPTY_FILE_NAME = "Empty File Name"
    }
    
    struct RegexExplression {
        static let ALL_CASE_ALPHABETS_AND_NUMBERS = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        static let WHOLE_NUMBERS = "0123456789"
        static let EMAIL_REGEX = "[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+(\\.[A-Za-z0-9!#$%&'*+/=?^_`{|}~-]+)*@([A-Za-z0-9]([A-Za-z0-9-]*[A-Za-z0-9])?\\.)+[A-Za-z0-9]([A-Za-z0-9-]*[A-Za-z0-9])?"
        
    }
    
    struct Predicates {
        static let SELF_MATCHES__ = "SELF MATCHES %@"
        
    }
}
