//
//  SettingsConfigurator.swift
//  iOS1-HW19-MaxMakeev
//
//  Created by Макс Макеев on 08.10.2025.
//

import UIKit

class SettingsConfigurator {
    
    // MARK: - Properties
    
    static let shared = SettingsConfigurator()
    private var sections: [SectionItem] = []
    
    // MARK: - Initialization
    
    private init() {
        setupSections()
    }
    
    // MARK: - Public Methods
    
    func getSections() -> [SectionItem] {
        return sections
    }
    
    func getItem(at indexPath: IndexPath) -> CellItem? {
        guard indexPath.section < sections.count else { return nil }
        let section = sections[indexPath.section]
        guard indexPath.row < section.items.count else { return nil }
        return section.items[indexPath.row]
    }
    
    // MARK: - Private Methods
    
    private func setupSections() {
        sections = [
            createConnectSection(),
            createSoundSection(),
            createMainSection(),
            createSecuritySection()
        ]
    }
    
    private func createConnectSection() -> SectionItem {
        let items = [
            CellItem(
                identifier: "airplane_mode",
                icon: Icons.airplane,
                background: .systemOrange,
                leftTitle: "Авиарежим",
                switchValue: true,
                cellType: .switchCell
            ),
            CellItem(
                identifier: "wifi",
                icon: Icons.wifi,
                background: .systemBlue,
                leftTitle: "Wi-Fi",
                rightTitle: "Выкл",
                switchValue: false,
                cellType: .titleCell
            ),
            CellItem(
                identifier: "bluetooth",
                icon: Icons.bluetooth,
                background: .systemBlue,
                leftTitle: "Bluetooth",
                rightTitle: "Вкл",
                switchValue: true,
                cellType: .titleCell
            ),
            CellItem(
                identifier: "cellular",
                icon: Icons.antenna,
                background: .systemGreen,
                leftTitle: "Сотовая связь",
                switchValue: false,
                cellType: .defaultCell
            ),
            CellItem(
                identifier: "hotspot",
                icon: Icons.chain,
                background: .systemGreen,
                leftTitle: "Режим модема",
                switchValue: false,
                cellType: .defaultCell
            ),
            CellItem(
                identifier: "battery",
                icon: Icons.battery,
                background: .systemGreen,
                leftTitle: "Аккумулятор",
                switchValue: false,
                cellType: .defaultCell
            ),
            CellItem(
                identifier: "vpn",
                icon: Icons.vpn,
                background: .systemBlue,
                leftTitle: "VPN",
                switchValue: false,
                cellType: .switchCell
            )
        ]
        
        return SectionItem(items: items)
    }
    
    private func createSoundSection() -> SectionItem {
        let items =  [
            CellItem(
                identifier: "nitifications",
                icon: Icons.notifications,
                background: .systemRed,
                leftTitle: "Уведомления",
                switchValue: false,
                cellType: .defaultCell
            ),
            CellItem(
                identifier: "sound_vibration",
                icon: Icons.volume,
                background: .systemRed,
                leftTitle: "Звуки ивибрация",
                switchValue: false,
                cellType: .defaultCell
            ),
            CellItem(
                identifier: "do_not_disturb",
                icon: Icons.moon,
                background: .systemIndigo,
                leftTitle: "Не беспокоить",
                switchValue: false,
                cellType: .defaultCell
            ),
            CellItem(
                identifier: "screen_time",
                icon: Icons.viewTime,
                background: .systemIndigo,
                leftTitle: "Экранное время",
                switchValue: false,
                cellType: .defaultCell
            )
        ]
        
        return SectionItem(items: items)
    }
    
    private func createMainSection() -> SectionItem {
        let items = [
            CellItem(
                identifier: "general",
                icon: Icons.gear,
                background: .systemGray,
                leftTitle: "Основные",
                switchValue: false,
                cellType: .defaultCell
            ),
            CellItem(
                identifier: "accessibility",
                icon: Icons.accessibility,
                background: .systemBlue,
                leftTitle: "Универсальный доступ",
                switchValue: false,
                cellType: .defaultCell
            ),
            CellItem(
                identifier: "camera",
                icon: Icons.camera,
                background: .systemGray,
                leftTitle: "Камера",
                switchValue: false,
                cellType: .defaultCell
            ),
            CellItem(
                identifier: "wallpaper",
                icon: Icons.wallpaper,
                background: .systemCyan,
                leftTitle: "Обои",
                switchValue: false,
                cellType: .defaultCell
            ),
            CellItem(
                identifier: "standby",
                icon: Icons.await,
                background: .black,
                leftTitle: "Ожидание",
                switchValue: false,
                cellType: .defaultCell
            ),
            CellItem(
                identifier: "search",
                icon: Icons.glass,
                background: .systemGray,
                leftTitle: "Поиск",
                switchValue: false,
                cellType: .defaultCell
            ),
            CellItem(
                identifier: "control_center",
                icon: Icons.switch2,
                background: .systemGray,
                leftTitle: "Пункт управления",
                switchValue: false,
                cellType: .defaultCell
            ),
            CellItem(
                identifier: "home_screen",
                icon: Icons.apps,
                background: .systemBlue,
                leftTitle: "Экран 'Домой'",
                switchValue: false,
                cellType: .defaultCell
            ),
            CellItem(
                identifier: "display_brightness",
                icon: Icons.sun,
                background: .systemBlue,
                leftTitle: "Экран и яркость",
                switchValue: false,
                cellType: .defaultCell
            ),
            CellItem(
                identifier: "siri",
                icon: Icons.siri,
                background: .magenta,
                leftTitle: "Siri",
                switchValue: false,
                cellType: .defaultCell
            )
        ]
        
        return SectionItem(items: items)
    }
    
    private func createSecuritySection() -> SectionItem {
        let items = [
            CellItem(
                identifier: "face_id_passcode",
                icon: Icons.faceID,
                background: .systemGreen,
                leftTitle: "Face ID и код пароль",
                switchValue: false,
                cellType: .defaultCell
            ),
            CellItem(
                identifier: "emergency_sos",
                icon: Icons.sos,
                background: .systemRed,
                leftTitle: "Экстренный вызов - SOS",
                switchValue: false,
                cellType: .defaultCell
            ),
            CellItem(
                identifier: "privacy_security",
                icon: Icons.confidentional,
                background: .systemBlue,
                leftTitle: "Конфиденциальность и безопасность",
                switchValue: false,
                cellType: .defaultCell
            )
        ]
        
        return SectionItem(items: items)
    }
}
