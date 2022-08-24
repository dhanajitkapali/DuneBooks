//
//  BookDetailViewController.swift
//  DuneBooks
//
//  Created by unthinkable-mac-0025 on 24/08/22.
//

import UIKit

class BookDetailViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet weak var bookNameLabel: UILabel!
    @IBOutlet weak var bookYearLabel: UILabel!
    @IBOutlet weak var bookWikiUrlLabel: UILabel!
    var bookId : String = ""
    
    // MARK: - Private Data Members
    private var viewModel : BookDetailViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Book Detail"

        viewModel = BookDetailViewModel()
        viewModel.bookId = bookId
        viewModel.loadBookDetail()
        viewModel.updateBookDetail = {
            self.bookNameLabel.text = self.viewModel.bookName
            self.bookYearLabel.text = self.viewModel.bookYear
            self.bookWikiUrlLabel.text = self.viewModel.bookWikiUrl
        }
    }

}
