//
//  BookDetailRepository.swift
//  DuneBooks
//
//  Created by unthinkable-mac-0025 on 24/08/22.
//

import Foundation

protocol BookDetailRepository {
    
    //UseCase will use this method to get some data
    func getBookDetailData(for id : String, completion : @escaping (Result<BookDetailModel, Error>) -> Void)
}
