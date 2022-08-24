//
//  BookDetailViewModel.swift
//  DuneBooks
//
//  Created by unthinkable-mac-0025 on 24/08/22.
//

import Foundation

//Communication : ViewController -> ViewModel
protocol BookDetailViewModelInput {
    //You may use functions()
    func loadBookDetail()
    func setBookId(with id : String)
}

//Communication : ViewModel -> ViewController
protocol BookDetailViewModelOutput {
    //You may use varibales/closures
    var bookName : String {get set}
    var bookYear : String {get set}
    var bookWikiUrl : String {get set}
    var updateBookDetail : (() -> ()) {get set}
}


class BookDetailViewModel {
    //Use the UseCase to perform BusinessLogics
    private let useCase : BookDetailUseCase
    
    var bookId : String = ""
    var bookName : String  = ""
    var bookYear : String = ""
    var bookWikiUrl : String = ""
    var updateBookDetail : (() -> ()) = { }
    
    init(useCase : BookDetailUseCase){
        self.useCase = useCase
    }
    
    convenience init() {
        self.init(useCase : DefaultBookDetailUseCase(repo: DefaultBookDetailRepository()))
    }
    
}


extension BookDetailViewModel : BookDetailViewModelInput {
    func setBookId(with id : String) {
        self.bookId = id
    }
    
    func loadBookDetail() {
        useCase.execute(with: bookId) { theBookDetailModel in
            self.bookName = theBookDetailModel.title
            self.bookYear = theBookDetailModel.year
            self.bookWikiUrl = theBookDetailModel.wiki_url
            
            self.updateBookDetail()
        }
    }
}

extension BookDetailViewModel : BookDetailViewModelOutput {
    
}
