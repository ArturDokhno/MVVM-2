//
//  TableViewController.swift
//  MVVM-2
//
//  Created by Артур Дохно on 09.04.2022.
//

import UIKit

class TableViewController: UITableViewController {
    
    var viewModel: TableViewViewModelType?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ViewModel()
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel?.numberOfRows() ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
        
        guard let tableViewCell = cell,
              let viewModel = viewModel else { return UITableViewCell() }
        
        let cellViewModel = viewModel.cellViewModel(forIndexpath: indexPath)
        
        tableViewCell.viewModel = cellViewModel
        
        return tableViewCell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let viewModel = viewModel else { return }

        viewModel.selectRow(atIndexPath: indexPath)
        
        performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier,
              let viewModel = viewModel else { return }
        
        if identifier == "detailSegue" {
            if let detailVC = segue.destination as? DetailViewController {
                detailVC.viewModel = viewModel.viewModelForSelectedRow()
            }
        }
    }
}
