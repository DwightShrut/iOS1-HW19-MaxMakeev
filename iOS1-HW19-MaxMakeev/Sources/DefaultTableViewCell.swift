//
//  DefaultTableViewCell.swift
//  iOS1-HW19-MaxMakeev
//
//  Created by Макс Макеев on 30.08.2025.
//

import UIKit

class DefaultTableViewCell: UITableViewCell {
    static let identifier = "DefaultTableViewCell"
    
    // MARK: - Outlets
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16)
        return label
    }()
    
    private lazy var image: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.layer.cornerRadius = 6
        imageView.contentMode = .center
        return imageView
    }()
    
    // MARK: - Initializers
    
    override init(
        style: UITableViewCell.CellStyle,
        reuseIdentifier: String?
    ) {
        super.init(
            style: style,
            reuseIdentifier: reuseIdentifier
        )
        accessoryType = .disclosureIndicator
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        contentView.addSubview(image)
        contentView.addSubview(titleLabel)
    }
    
    private func setupLayout() {
        image.addConstraints(
            centerY: contentView.centerYAnchor,
            centerYPadding: 0,
            left: contentView.leadingAnchor,
            leftPadding: 16,
            width: 30,
            height: 30
        )
        
        titleLabel.addConstraints(
            centerY: contentView.centerYAnchor,
            centerYPadding: 0,
            left: image.trailingAnchor,
            leftPadding: 8
        )
    }
    
    // MARK: - Configurate
    
    func configure(with viewModel: CellItem) {
        image.backgroundColor = viewModel.background
        image.image = viewModel.icon
        titleLabel.text = viewModel.leftTitle
    }
}
