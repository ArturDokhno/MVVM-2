//
//  TableViewCellViewModel.swift
//  MVVM-2
//
//  Created by Артур Дохно on 10.04.2022.
//

import Foundation

class TableViewCellViewModel: TableViewCellViewModelType {
    
    private var profile: Profile
    
    var fullName: String {
        profile.name + " " + profile.secondName
    }
    
    var age: String {
        "\(profile.age)"
    }
    
    init(profile: Profile) {
        self.profile = profile
    }
}
