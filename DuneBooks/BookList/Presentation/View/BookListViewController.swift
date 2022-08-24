//
//  ViewController.swift
//  DuneBooks
//
//  Created by unthinkable-mac-0025 on 23/08/22.
//

import UIKit

class BookListViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var bookListTableView: UITableView!
    
    
    // MARK: - Private Data Members
    private var viewModel : BookListViewModel!
    
    

}


// MARK: - LifeCycle Methods
extension BookListViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        viewModel = BookListViewModel()
        bookListTableView.dataSource = self
        
        viewModel.loadBookList()
        viewModel.updateBookList = {
            self.bookListTableView.reloadData()
        }
    }
}


// MARK: - UITableViewDelegate, UITableViewDataSource Methods
extension BookListViewController : UITableViewDelegate, UITableViewDataSource {
    //UITableViewDataSource Methods
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = bookListTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let model = viewModel.items[indexPath.row]
        cell.textLabel?.text = model.title
        cell.detailTextLabel?.text = model.year
        return cell
    }
    
    //UITableViewDelegate Methods
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        bookListTableView.deselectRow(at: indexPath, animated: true)
    }
    
}
