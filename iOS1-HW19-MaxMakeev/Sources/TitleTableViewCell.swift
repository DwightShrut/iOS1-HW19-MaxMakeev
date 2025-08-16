//
//  TitleTableViewCell.swift
//  iOS1-HW19-MaxMakeev
//
//  Created by Макс Макеев on 13.08.2025.
//

import UIKit

class TitleTableViewCell: UITableViewCell {
    
    // MARK: - Views
    
    static let identifier = "TitleCell"
    
    private lazy var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.layer.cornerRadius = 6
        imageView.contentMode = .center
        return imageView
    }()
    
    private lazy var rightTitleLabel: UILabel = {
        let rightLabel = UILabel()
        rightLabel.font = .systemFont(ofSize: 16, weight: .medium)
        return rightLabel
    }()
    
    private lazy var leftTitleLabel: UILabel = {
        let leftLabel = UILabel()
        leftLabel.font = .systemFont(ofSize: 16, weight: .medium)
        return leftLabel
    }()
    
    // MARK: - Initializers
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        setupHierarchy()
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError( "init(coder:) has not been implemented" )
    }
    
    // MARK: - Setup
    
    private func setupHierarchy() {
        contentView.addSubview(iconImageView)
        contentView.addSubview(leftTitleLabel)
        contentView.addSubview(rightTitleLabel)
    }
    
    private func setupLayout() {
        iconImageView.addConstraints(
            centerY: contentView.centerYAnchor,
            centerYPadding: 0,
            left: contentView.leadingAnchor,
            leftPadding: 16,
            width: 26,
            height: 26
        )
        
        leftTitleLabel.addConstraints(
            centerY: contentView.centerYAnchor,
            centerYPadding: 0,
            left: iconImageView.trailingAnchor,
            leftPadding: 12,
            right: rightTitleLabel.leadingAnchor,
            rightPadding: 10
        )
        
        rightTitleLabel.addConstraints(
            centerY: contentView.centerYAnchor,
            centerYPadding: 0,
            right: contentView.trailingAnchor,
            rightPadding: -16
        )
    }
        
        // MARK: - Configurate Cell
        
    func configurate(with item: CellItem) {
        iconImageView.image = item.icon
        iconImageView.backgroundColor = item.background
        leftTitleLabel.text = item.leftTitle
        rightTitleLabel.text = item.rightTitle
    }
}

