//
//  NetworkingError.swift
//  DuneBooks
//
//  Created by unthinkable-mac-0025 on 23/08/22.
//

import Foundation

enum NetworkingError : Error{
    case error(err : String)
    case noResponse
    case invalidResponse(type : HttpResponseCode)
    case invalidData
    case decodingError(err : String)
}
