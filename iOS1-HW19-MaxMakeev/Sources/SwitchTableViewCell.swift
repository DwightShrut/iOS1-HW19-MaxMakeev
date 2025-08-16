//
//  SwitchTableViewCell.swift
//  iOS1-HW19-MaxMakeev
//
//  Created by Макс Макеев on 13.08.2025.
//

import UIKit

class SwitchTableViewCell: UITableViewCell {
    
    // MARK: - Views
    
    static let identifier = "SwitchCell"
    
    private lazy var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.tintColor = .white
        imageView.contentMode = .center
        imageView.layer.cornerRadius = 6
        return imageView
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 16)
        return label
    }()
    
    lazy var switchControl: UISwitch = {
        let switchControl = UISwitch()
        return switchControl
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
        contentView.addSubview(titleLabel)
        contentView.addSubview(switchControl)
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
        
        titleLabel.addConstraints(
            centerY: contentView.centerYAnchor,
            centerYPadding: 0,
            left: iconImageView.trailingAnchor,
            leftPadding: 12,
            right: switchControl.leadingAnchor,
            rightPadding: 10
        )
        
        switchControl.addConstraints(
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
        titleLabel.text = item.leftTitle
        switchControl.isOn = item.switchValue
    }
}
