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
    let background: UIColor?
    let leftTitle: String?
    var rightTitle: String?
    let isSwitch: Bool
    let switchValue: Bool
}

enum CellType {
    case switchCell
    case defaultCell
    case titleCell
}

enum icons {
    static let airplane = UIImage(systemName: "airplane")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .light))
    static let wifi = UIImage(systemName: "wifi")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .light))
    static let bluetooth = UIImage(named: "bluetooth")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .medium)).withTintColor(.white)
    static let antenna = UIImage(systemName: "antenna.radiowaves.left.and.right")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .medium))
    static let chain = UIImage(systemName: "personalhotspot")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .medium))
    static let vpn = UIImage(systemName: "network")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .light))
}



let cellQueue: [CellType] = [
    .switchCell,
    .titleCell,
    .titleCell,
    .defaultCell,
    .defaultCell,
    .switchCell
]

extension CellItem {
    static let settingsItems: [CellItem] = [
        CellItem(
            icon: icons.airplane, background: .systemOrange,
            leftTitle: "Авиарежим",
            isSwitch: true,
            switchValue: true,
        ),
         CellItem(
            icon: icons.wifi, background: .systemBlue,
            leftTitle: "Wi-Fi",
            rightTitle: "Выкл",
            isSwitch: false,
            switchValue: false,
         ),
         CellItem(
            icon: icons.bluetooth, background: .systemBlue,
            leftTitle: "Bluetooth",
            rightTitle: "Вкл",
            isSwitch: false,
            switchValue: false,
         ),
         CellItem(
            icon: icons.antenna, background: .systemGreen,
            leftTitle: "Сотовая связь",
            isSwitch: false,
            switchValue: false
         ),
         CellItem(
            icon: icons.chain, background: .systemGreen,
            leftTitle: "Режим модема",
            isSwitch: false,
            switchValue: false
         ),
         CellItem(
            icon: icons.vpn, background: .systemBlue,
            leftTitle: "VPN",
            isSwitch: false,
            switchValue: false
         )]
    
}
                    
