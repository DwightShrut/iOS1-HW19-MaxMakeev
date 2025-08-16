//
//  ViewController.swift
//  iOS1-HW19-MaxMakeev
//
//  Created by Макс Макеев on 13.08.2025.
//

import UIKit

class SettingsViewController: UIViewController {
    
    // MARK: - Outlets
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(SwitchTableViewCell.self, forCellReuseIdentifier: SwitchTableViewCell.identifier)
        tableView.register(TitleTableViewCell.self, forCellReuseIdentifier: TitleTableViewCell.identifier)
        tableView.dataSource = self
        tableView.delegate = self
        return tableView
    }()
    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Настройки"
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        view.addSubview(tableView)
    }
    
    private func setupLayout() {
        tableView.addConstraints(
            top: view.safeAreaLayoutGuide.topAnchor,
            topPadding: 0,
            left: view.leadingAnchor,
            leftPadding: 0,
            right: view.trailingAnchor,
            rightPadding: 0,
            bottom: view.bottomAnchor,
            bottomPadding: 0
        )
    }
}

extension SettingsViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        CellItem.settingsItems.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        CellItem.settingsItems[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellType = cellQueue[indexPath.section][indexPath.row]
        let cellItem = CellItem.settingsItems[indexPath.section][indexPath.row]
        
        switch cellType {
        case .switchCell:
            let cell = tableView.dequeueReusableCell(withIdentifier: SwitchTableViewCell.identifier, for: indexPath) as! SwitchTableViewCell
            cell.configurate(with: cellItem)
            return cell
        case .titleCell:
            let cell = tableView.dequeueReusableCell(withIdentifier: TitleTableViewCell.identifier, for: indexPath) as! TitleTableViewCell
            cell.configurate(with: cellItem)
            cell.accessoryType = .disclosureIndicator
            return cell
        case .defaultCell:
            let cell = UITableViewCell(style: .default, reuseIdentifier: "DefaultCell")
            cell.textLabel?.text = cellItem.leftTitle
            cell.imageView?.tintColor = .white
            cell.imageView?.layer.cornerRadius = 6
            cell.imageView?.backgroundColor = cellItem.background
            cell.imageView?.contentMode = .center
            cell.imageView?.image = cellItem.icon
            cell.imageView?.addConstraints(
                centerY: cell.contentView.centerYAnchor,
                centerYPadding: 0,
                left: cell.contentView.leadingAnchor,
                leftPadding: 16,
                width: 26,
                height: 26
            )
            cell.accessoryType = .disclosureIndicator
            return cell
        }
    }
}

