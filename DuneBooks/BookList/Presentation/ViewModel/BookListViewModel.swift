//
//  BookListViewModel.swift
//  DuneBooks
//
//  Created by unthinkable-mac-0025 on 23/08/22.
//

import Foundation

//Communication : ViewController -> ViewModel
protocol BookListViewModelInput {
    //You may use functions()
    func loadBookList()
}

//Communication : ViewModel -> ViewController
protocol BookListViewModelOutput {
    //You may use varibales/closures
}


class BookListViewModel {
    //Use the UseCase to perform BusinessLogics
    private let useCase : BookListUseCase
    
    init(useCase : BookListUseCase){
        self.useCase = useCase
    }
    
    convenience init() {
        self.init(useCase : DefaultBookListUseCase(repo: DefaultBookListRepository()))
    }
    
}


extension BookListViewModel : BookListViewModelInput {
    func loadBookList() {
        useCase.execute { result in
            print(result.count)
        }
    }
}

extension BookListViewModel : BookListViewModelOutput {
    
}
