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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
