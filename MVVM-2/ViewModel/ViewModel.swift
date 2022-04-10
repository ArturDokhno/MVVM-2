//
//  ViewModel.swift
//  MVVM-2
//
//  Created by Артур Дохно on 09.04.2022.
//

import Foundation

class ViewModel: TableViewViewModelType {
    
    var profiles: [Profile] = [
        Profile(name: "Artur", secondName: "Dokhno", age: 29),
        Profile(name: "Julia", secondName: "Dokhno", age: 26)
    ]
    
    func numberOfRows() -> Int {
        return profiles.count
    }
    
    func cellViewModel(forIndexpath indexPath: IndexPath) -> TableViewCellViewModelType? {
        let profile = profiles[indexPath.row]
        return TableViewCellViewModel(profile: profile)
    }
    
}

