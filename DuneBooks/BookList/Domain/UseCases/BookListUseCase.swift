//
//  BookListUseCase.swift
//  DuneBooks
//
//  Created by unthinkable-mac-0025 on 23/08/22.
//

import Foundation

protocol BookListUseCase {
    func __SampleMethod__execute<T, K>(requestValue : T, completion : @escaping (Result<K, Error>) -> Void)
}

class DefaultBookListUseCase {
    
    private let repo : BookListRepository
    init(repo : BookListRepository) {
        self.repo = repo
    }
    
}


extension DefaultBookListUseCase : BookListUseCase {
    
    func __SampleMethod__execute<T, K>(requestValue: T, completion: @escaping (Result<K, Error>) -> Void) {
        
    }
}
