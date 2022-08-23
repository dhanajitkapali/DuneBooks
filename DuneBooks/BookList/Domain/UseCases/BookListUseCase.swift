//
//  BookListUseCase.swift
//  DuneBooks
//
//  Created by unthinkable-mac-0025 on 23/08/22.
//

import Foundation

protocol BookListUseCase {
    func execute(completion : @escaping ([BookListModel]) -> Void)
}

class DefaultBookListUseCase {
    
    private let repo : BookListRepository
    init(repo : BookListRepository) {
        self.repo = repo
    }
    
}


extension DefaultBookListUseCase : BookListUseCase {
    func execute(completion: @escaping ([BookListModel]) -> Void) {
        repo.getBookListData { result in
            switch result {
            case .success(let theBookList):
                let bookList = theBookList.map{
                    book in
                    BookListModel(id: book.id, title: book.title, year: book.year)
                }
                completion(bookList)
            case .failure(let errot):
                print(errot.localizedDescription)
            }
        }
    }
}
