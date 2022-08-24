//
//  DefaultBookDetailRepository.swift
//  DuneBooks
//
//  Created by unthinkable-mac-0025 on 24/08/22.
//

import Foundation

class DefaultBookDetailRepository {
    //Define Some Varibales
    private var networkService : NetworkService?
    
    init(networkService : NetworkService = DefaultNetworkService()) {
        self.networkService = networkService
    }
}

extension DefaultBookDetailRepository : BookDetailRepository{
    func getBookDetailData(for id: String, completion: @escaping (Result<BookDetailModel, Error>) -> Void) {
        print("Will Get Book Detail From Repository")
        let endPoint = BookDetailAPIEndPoint.getBookDetailEndPoint(for: id)
        
        networkService?.getAPICall(url: endPoint, parameters: [:], headers: [:], responseClass: BookDetailResponseDTO.self, completion: { result in
            switch result{
            case .success(let dataModel):
                let bookDetailModel = BookDetailModel(title: dataModel.title, year: dataModel.year, wiki_url: dataModel.wiki_url)
                completion(.success(bookDetailModel))
            case .failure(let error):
                completion(.failure(error))
                //print(error.localizedDescription)
            }
        })
    }

}

