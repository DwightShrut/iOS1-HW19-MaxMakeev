//
//  Model.swift
//  iOS1-HW19-MaxMakeev
//
//  Created by Макс Макеев on 13.08.2025.
//

import UIKit

// MARK: - Model

struct CellItem: Hashable {
    let icon: UIImage?
    let background: UIColor?
    let leftTitle: String?
    var rightTitle: String?
    let switchValue: Bool
    
    static var indexSection: Int? = 0
    static var indexRow: Int? = 0
}

enum CellType {
    case switchCell
    case defaultCell
    case titleCell
}

// MARK: - Constants

enum icons {
    static let airplane = UIImage(systemName: "airplane")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .light))
    static let wifi = UIImage(systemName: "wifi")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .light))
    static let bluetooth = UIImage(named: "bluetooth")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .medium)).withTintColor(.white)
    static let antenna = UIImage(systemName: "antenna.radiowaves.left.and.right")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .medium))
    static let chain = UIImage(systemName: "personalhotspot")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .medium))
    static let battery = UIImage(systemName: "battery.100percent")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 13, weight: .light))
    static let vpn = UIImage(systemName: "network")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .light))
    static let notifications = UIImage(systemName: "bell.badge.fill")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .light))
    static let volume = UIImage(systemName: "speaker.wave.3.fill")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .light))
    static let moon = UIImage(systemName: "moon.fill")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .light))
    static let viewTime = UIImage(systemName: "hourglass")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .light))
    static let gear = UIImage(systemName: "gear")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .light))
    static let accessibility = UIImage(systemName: "accessibility")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .light))
    static let camera = UIImage(systemName: "camera.fill")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .light))
    static let wallpaper = UIImage(systemName: "photo.artframe")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .light))
    static let await = UIImage(systemName: "calendar.badge.clock")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .light))
    static let glass = UIImage(systemName: "magnifyingglass")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .light))
    static let switch2 = UIImage(systemName: "switch.2")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .light))
    static let apps = UIImage(systemName: "apps.ipad")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .light))
    static let sun = UIImage(systemName: "sun.max.fill")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .light))
    static let siri = UIImage(systemName: "bonjour")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .light)).withTintColor(.magenta)
    static let faceID = UIImage(systemName: "faceid")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .light))
    static let sos = UIImage(systemName: "sos")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .light))
    static let confidentional = UIImage(systemName: "hand.raised.fill")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 15, weight: .light))
}

let cellQueue: [[CellType]] = [
    [.switchCell,
     .titleCell,
     .titleCell,
     .defaultCell,
     .defaultCell,
     .defaultCell,
     .switchCell
    ],
    [.defaultCell,
     .defaultCell,
     .defaultCell,
     .defaultCell
    ],
    [.defaultCell,
     .defaultCell,
     .defaultCell,
     .defaultCell,
     .defaultCell,
     .defaultCell,
     .defaultCell,
     .defaultCell,
     .defaultCell,
     .defaultCell
    ],
    [.defaultCell,
     .defaultCell,
     .defaultCell
    ]]

// MARK: - Cell configuration array

extension CellItem {
    static let settingsItems: [[CellItem]] = [
        [CellItem(
            icon: icons.airplane,
            background: .systemOrange,
            leftTitle: "Авиарежим",
            switchValue: true,
        ),
         CellItem(
            icon: icons.wifi,
            background: .systemBlue,
            leftTitle: "Wi-Fi",
            rightTitle: "Выкл",
            switchValue: false,
         ),
         CellItem(
            icon: icons.bluetooth,
            background: .systemBlue,
            leftTitle: "Bluetooth",
            rightTitle: "Вкл",
            switchValue: false,
         ),
         CellItem(
            icon: icons.antenna,
            background: .systemGreen,
            leftTitle: "Сотовая связь",
            switchValue: false
         ),
         CellItem(
            icon: icons.chain,
            background: .systemGreen,
            leftTitle: "Режим модема",
            switchValue: false
         ),
         CellItem(
            icon: icons.battery,
            background: .systemGreen,
            leftTitle: "Аккумулятор",
            switchValue: false
         ),
         CellItem(
            icon: icons.vpn,
            background: .systemBlue,
            leftTitle: "VPN",
            switchValue: false
         )],
        [CellItem(
            icon: icons.notifications,
            background: .systemRed,
            leftTitle: "Уведомления",
            switchValue: false
        ),
         CellItem(
            icon: icons.volume,
            background: .systemRed,
            leftTitle: "Звуки ивибрация",
            switchValue: false
         ),
         CellItem(
            icon: icons.moon,
            background: .systemIndigo,
            leftTitle: "Не беспокоить",
            switchValue: false
         ),
         CellItem(
            icon: icons.viewTime,
            background: .systemIndigo,
            leftTitle: "Экранное время",
            switchValue: false
         )],
        [CellItem(
            icon: icons.gear,
            background: .systemGray,
            leftTitle: "Основные",
            switchValue: false
        ),
         CellItem(
            icon: icons.accessibility,
            background: .systemBlue,
            leftTitle: "Универсальный доступ",
            switchValue: false
         ),
         CellItem(
            icon: icons.camera,
            background: .systemGray,
            leftTitle: "Камера",
            switchValue: false
         ),
         CellItem(
            icon: icons.wallpaper,
            background: .systemCyan,
            leftTitle: "Обои",
            switchValue: false
         ),
         CellItem(
            icon: icons.await,
            background: .black,
            leftTitle: "Ожидание",
            switchValue: false
         ),
         CellItem(
            icon: icons.glass,
            background: .systemGray,
            leftTitle: "Поиск",
            switchValue: false
         ),
         CellItem(
            icon: icons.switch2,
            background: .systemGray,
            leftTitle: "Пункт управления",
            switchValue: false
         ),
         CellItem(
            icon: icons.apps,
            background: .systemBlue,
            leftTitle: "Экран 'Домой'",
            switchValue: false
         ),
         CellItem(
            icon: icons.sun,
            background: .systemBlue,
            leftTitle: "Экран и яркость",
            switchValue: false
         ),
         CellItem(
            icon: icons.siri,
            background: .magenta,
            leftTitle: "Siri",
            switchValue: false
         )],
        [CellItem(
            icon: icons.faceID,
            background: .systemGreen,
            leftTitle: "Facen ID и код пароль",
            switchValue: false
        ),
         CellItem(
            icon: icons.sos,
            background: .systemRed,
            leftTitle: "Экстренный вызов - SOS",
            switchValue: false
         ),
         CellItem(
            icon: icons.confidentional,
            background: .systemBlue,
            leftTitle: "Конфиденциальность и безопасность",
            switchValue: false
         )]]
}

