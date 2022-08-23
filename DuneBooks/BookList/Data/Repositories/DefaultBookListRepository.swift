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
    
    //SampleCode, i.e. how to get data from API
    func __SampleMethod__fetchData() {
        let endPoint = BookListAPIEndPoint.__SampleMethod__getSomeEndPoint()
        networkService?.getAPICall(url: endPoint, parameters: [:], headers: [:], responseClass: BookListModel.self, completion: { result in
            switch result{
            case .success(let dataModel):
                print(dataModel)
            case .failure(let error):
                print(error.localizedDescription)
            }
        })
    }
    
    

}

