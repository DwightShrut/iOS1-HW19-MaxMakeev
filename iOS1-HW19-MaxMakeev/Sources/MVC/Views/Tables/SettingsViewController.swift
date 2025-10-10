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
        let tableView = UITableView(
            frame: .zero,
            style: .grouped
        )
        
        tableView.register(
            SwitchTableViewCell.self,
            forCellReuseIdentifier: SwitchTableViewCell.identifier
        )
        
        tableView.register(
            TitleTableViewCell.self,
            forCellReuseIdentifier: TitleTableViewCell.identifier
        )
        
        tableView.register(
            DefaultTableViewCell.self,
            forCellReuseIdentifier: DefaultTableViewCell.identifier
        )
 
        return tableView
    }()
    
    private lazy var dataSource = SettingsController()
    private lazy var item = SettingsConfigurator.shared
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Настройки"
        setupHierarchy()
        setupLayout()
        setupDataSource()
        setupDelegate()
    }
    
    // MARK: - Setup
    
    private func setupDataSource() {
        tableView.dataSource = dataSource
    }
    
    private func setupDelegate() {
        tableView.delegate = self
    }
    
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

// MARK: - Extension to SettingsViewController

extension SettingsViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        print("Нажата ячейка \(item.getItem(at: indexPath)?.leftTitle ?? "неизвестная ячейка")")
        
        if let data = item.getItem(at: indexPath), data.cellType != .switchCell {
            let viewController = DetailViewController()
            viewController.configure(with: data)
            navigationController?.pushViewController(viewController, animated: true)
        }
    }
}
