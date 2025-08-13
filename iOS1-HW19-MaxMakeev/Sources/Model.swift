//
//  Model.swift
//  iOS1-HW19-MaxMakeev
//
//  Created by Макс Макеев on 13.08.2025.
//

import UIKit

// MARK: - Model

struct CellItem {
    let icon: UIImage?
    let leftTitle: String?
    let rightTitle: String?
    let isSwitch: Bool
    let switchValue: Bool
    let action: UIAction?
}

enum CellType {
    case switchCell
    case defaultCell
    case titleCell
}
                    
