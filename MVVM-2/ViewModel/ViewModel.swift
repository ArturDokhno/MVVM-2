//
//  ViewModel.swift
//  MVVM-2
//
//  Created by Артур Дохно on 09.04.2022.
//

import Foundation

class ViewModel: TableViewModelType {
    
    var profiles: [Profile] = [
        Profile(name: "Artur", secondName: "Dokhno", age: 29),
        Profile(name: "Vova", secondName: "Erohin", age: 31),
        Profile(name: "Julia", secondName: "Dokhno", age: 26)
    ]
    
    var numberOfRows: Int {
        return profiles.count
    }
}

