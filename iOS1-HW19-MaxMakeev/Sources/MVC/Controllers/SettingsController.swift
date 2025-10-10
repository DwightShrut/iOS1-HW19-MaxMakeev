//
//  SettingsController.swift
//  iOS1-HW19-MaxMakeev
//
//  Created by Макс Макеев on 09.10.2025.
//

import UIKit

class SettingsController: UIViewController {
    
    // MARK: - Properties
    
    private let dataConfiguration = SettingsConfigurator.shared
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: Public Methods
    
    func getItem(at indexPath: IndexPath) -> CellItem? {
        return dataConfiguration.getItem(at: indexPath)
    }
}

// MARK: - Extension to SettingsController

extension SettingsController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        dataConfiguration.getSections().count
    }
    
    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int
    ) -> Int {
        let sections = dataConfiguration.getSections()
        return sections[section].items.count
    }
    
    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath
    ) -> UITableViewCell {
        
        guard let cellItem = getItem(at: indexPath) else { return UITableViewCell() }
        
        
        switch cellItem.cellType {
        case .switchCell:
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: SwitchTableViewCell.identifier,
                for: indexPath
            ) as? SwitchTableViewCell else { return UITableViewCell() }
            
            cell.configurate(with: cellItem)
            return cell
        case .titleCell:
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: TitleTableViewCell.identifier,
                for: indexPath
            ) as? TitleTableViewCell else { return UITableViewCell() }
            
            cell.configurate(with: cellItem)
            cell.accessoryType = .disclosureIndicator
            return cell
        case .defaultCell:
            guard let cell = tableView.dequeueReusableCell(
                withIdentifier: DefaultTableViewCell.identifier,
                for: indexPath
            ) as? DefaultTableViewCell else { return UITableViewCell() }
            cell.configure(with: cellItem)
            return cell
        }
    }
}


        
