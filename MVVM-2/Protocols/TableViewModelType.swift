//
//  TableViewModelType.swift
//  MVVM-2
//
//  Created by Артур Дохно on 09.04.2022.
//

import Foundation

protocol TableViewModelType {
    var numberOfRows: Int { get }
    var profiles: [Profile] { get }
}
