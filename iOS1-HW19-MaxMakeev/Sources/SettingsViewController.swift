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
        tableView.translatesAutoresizingMaskIntoConstraints = false
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

