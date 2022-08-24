//
//  BookDetailUseCase.swift
//  DuneBooks
//
//  Created by unthinkable-mac-0025 on 24/08/22.
//

import Foundation

protocol BookDetailUseCase {
    func execute(with id : String, completion : @escaping (BookDetailModel) -> Void)
}

class DefaultBookDetailUseCase {
    
    private let repo : BookDetailRepository
    init(repo : BookDetailRepository) {
        self.repo = repo
    }
    
}


extension DefaultBookDetailUseCase : BookDetailUseCase {
    func execute(with id : String, completion: @escaping (BookDetailModel) -> Void) {
        repo.getBookDetailData(for: id) { result in
            switch result {
            case .success(let theBookDetail):
                completion(theBookDetail)
            case .failure(let errot):
                print(errot.localizedDescription)
            }
        }
    }
}
