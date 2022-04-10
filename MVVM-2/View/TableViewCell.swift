//
//  TableViewCell.swift
//  MVVM-2
//
//  Created by Артур Дохно on 09.04.2022.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet var fullNameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    
    weak var viewModel: TableViewCellViewModelType? {
        willSet(viewModel) {
            guard let viewModel = viewModel else { return }
            fullNameLabel.text = viewModel.fullName
            ageLabel.text = viewModel.age
        }
    }
}
