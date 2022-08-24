//
//  DefaultBookListRepository.swift
//  DuneBooks
//
//  Created by unthinkable-mac-0025 on 23/08/22.
//

import Foundation

class DefaultBookListRepository {
    //Define Some Varibales
    private var networkService : NetworkService?
    
    init(networkService : NetworkService = DefaultNetworkService()) {
        self.networkService = networkService
    }
}

extension DefaultBookListRepository : BookListRepository{
    
    func getBookListData(completion: @escaping (Result<[BookListResponseDTO], Error>) -> Void) {
        print("Will Get Data From Repository")
        let endPoint = BookListAPIEndPoint.getBookListEndPoint()
        networkService?.getAPICall(url: endPoint, parameters: [:], headers: [:], responseClass: [BookListResponseDTO].self, completion: { result in
            switch result{
            case .success(let dataModel):
                completion(.success(dataModel))
                //print(dataModel)
            case .failure(let error):
                completion(.failure(error))
                //print(error.localizedDescription)
            }
        })
    }

}

