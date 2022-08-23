//
//  ViewController.swift
//  DuneBooks
//
//  Created by unthinkable-mac-0025 on 23/08/22.
//

import UIKit

class BookListViewController: UIViewController {
    
    var bookListSize : Int = 10
    private var viewModel : BookListViewModel!
    @IBOutlet weak var bookListTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        viewModel = BookListViewModel()
        bookListTableView.dataSource = self
        
        viewModel.loadBookList()
    }


}


extension BookListViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookListSize
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = bookListTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "LoL"
        return cell
    }
    
    
}
