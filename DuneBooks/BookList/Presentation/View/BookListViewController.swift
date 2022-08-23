//
//  ViewController.swift
//  DuneBooks
//
//  Created by unthinkable-mac-0025 on 23/08/22.
//

import UIKit

class BookListViewController: UIViewController {

    private var viewModel : BookListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        viewModel = BookListViewModel()
    }


}

