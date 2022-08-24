//
//  BookListRepository.swift
//  DuneBooks
//
//  Created by unthinkable-mac-0025 on 23/08/22.
//

import Foundation

protocol BookListRepository {
    
    //UseCase will use this method to get some data
    func getBookListData(completion : @escaping (Result<[BookListModel], Error>) -> Void)
}
