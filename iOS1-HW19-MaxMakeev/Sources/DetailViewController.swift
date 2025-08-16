//
//  DetailViewController.swift
//  iOS1-HW19-MaxMakeev
//
//  Created by Макс Макеев on 16.08.2025.
//

import UIKit

class DetailViewController: UIViewController {
    
    // MARK: - Outlets
    
    private lazy var switchTable: UITableView = {
        let tableView = UITableView(frame: .zero, style: .grouped)
        tableView.register(SwitchTableViewCell.self, forCellReuseIdentifier: SwitchTableViewCell.identifier)
        tableView.dataSource = self
        return tableView
    }()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        view.addSubview(switchTable)
    }
    
    private func setupLayout() {
        switchTable.addConstraints(
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

// MARK: - Extension to DetailViewController

extension DetailViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellType = cellQueue[CellItem.indexSection ?? 0][CellItem.indexRow ?? 1]
        
        switch cellType {
        case .titleCell:
            let cell = tableView.dequeueReusableCell(withIdentifier: SwitchTableViewCell.identifier, for: indexPath) as! SwitchTableViewCell
            cell.configurate(with:CellItem.settingsItems[CellItem.indexSection ?? 0][CellItem.indexRow ?? 0])
            return cell
        case .defaultCell:
            let cell = UITableViewCell(style: .default, reuseIdentifier: "DefaultCell")
            cell.textLabel?.text = "Таблица с каким то дейтвиями"
            return cell
        case .switchCell:
            return UITableViewCell()
        }
    }
}
