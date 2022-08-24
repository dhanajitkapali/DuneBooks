//
//  BookDetailResponseDTO.swift
//  DuneBooks
//
//  Created by unthinkable-mac-0025 on 24/08/22.
//

import Foundation

struct BookDetailResponseDTO : Decodable {
    let id : String
    let title : String
    let year: String
    let wiki_url: String
}
