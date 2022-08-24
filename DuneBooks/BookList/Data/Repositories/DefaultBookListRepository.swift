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
    
    func getBookListData(completion: @escaping (Result<[BookListModel], Error>) -> Void) {
        print("Will Get Book List From Repository")
        let endPoint = BookListAPIEndPoint.getBookListEndPoint()
        networkService?.getAPICall(url: endPoint, parameters: [:], headers: [:], responseClass: [BookListResponseDTO].self, completion: { result in
            switch result{
            case .success(let dataModel):
                let bookListModel = dataModel.map { theDataModel in
                    BookListModel(id: theDataModel.id, title: theDataModel.title, year: theDataModel.year)
                }
                completion(.success(bookListModel))
                //print(dataModel)
            case .failure(let error):
                completion(.failure(error))
                //print(error.localizedDescription)
            }
        })
    }

}

