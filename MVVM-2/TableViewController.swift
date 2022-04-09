//
//  TableViewController.swift
//  MVVM-2
//
//  Created by Артур Дохно on 09.04.2022.
//

import UIKit

class TableViewController: UITableViewController {
    
    var profiles: [Profile]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profiles = [
            Profile(name: "Artur", secondName: "Dokhno", age: 29),
            Profile(name: "Vova", secondName: "Erohin", age: 31),
            Profile(name: "Julia", secondName: "Dokhno", age: 26)
        ]
    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return profiles?.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell

        guard let tableViewCell = cell else { return UITableViewCell() }
        
        let profile = profiles[indexPath.row]

        tableViewCell.ageLabel.text = "\(profile.age)"
        tableViewCell.fullNameLabel.text = "\(profile.name) \(profile.secondName)"
        
        return tableViewCell
    }

}
