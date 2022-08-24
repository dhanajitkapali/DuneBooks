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
    var items : [BookListItemViewModel] {get set}
    var updateBookList : (() -> ()) {get set}
}


class BookListViewModel {
    //Use the UseCase to perform BusinessLogics
    private let useCase : BookListUseCase
    
    var bookListData : [BookListModel] = [BookListModel]()
    var items: [BookListItemViewModel]  = [BookListItemViewModel]()
    var updateBookList : (() -> ()) = { }
    
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
            self.items = result.map({ bookListModel in
                BookListItemViewModel(title: bookListModel.title, year: bookListModel.year)
            })
            self.bookListData = result
            //print(result.count)
            self.updateBookList()
        }
    }
}

extension BookListViewModel : BookListViewModelOutput {
    
}
