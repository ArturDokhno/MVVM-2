//
//  TableViewCellModelType.swift
//  MVVM-2
//
//  Created by Артур Дохно on 10.04.2022.
//

import Foundation

protocol TableViewCellViewModelType: AnyObject {
    var fullName: String { get }
    var age: String { get }
}
