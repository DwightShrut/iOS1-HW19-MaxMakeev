//
//  Item.swift
//  iOS1-HW19-MaxMakeev
//
//  Created by Макс Макеев on 07.10.2025.
//
import UIKit

struct CellItem: Hashable {
    let identifier: String
    let icon: UIImage?
    let background: UIColor?
    let leftTitle: String?
    var rightTitle: String?
    let switchValue: Bool
    let cellType: CellType
}

enum CellType {
    case switchCell
    case defaultCell
    case titleCell
}

struct SectionItem {
    var items: [CellItem]
}
