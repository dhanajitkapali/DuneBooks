//
//  BookDetailAPIEndPoint.swift
//  DuneBooks
//
//  Created by unthinkable-mac-0025 on 24/08/22.
//

import Foundation

struct BookDetailAPIEndPoint {
    
//    https://the-dune-api.herokuapp.com/books/10
//    https://the-dune-api.herokuapp.com/books/id/22
    
    static func getBookDetailEndPoint(for id : String) -> String {
        return "https://the-dune-api.herokuapp.com/books/id/\(id)"
    }
    
}

