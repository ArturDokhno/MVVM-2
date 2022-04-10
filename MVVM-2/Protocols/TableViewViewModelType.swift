//
//  TableViewModelType.swift
//  MVVM-2
//
//  Created by Артур Дохно on 09.04.2022.
//

import Foundation

protocol TableViewViewModelType {
    func numberOfRows() -> Int
    func cellViewModel(forIndexpath indexPath: IndexPath) -> TableViewCellViewModelType? 
}
