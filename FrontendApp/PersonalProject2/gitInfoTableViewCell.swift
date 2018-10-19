//
//  gitInfoTableViewCell.swift
//  PersonalProject2
//
//  Created by C4Q on 9/1/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class gitInfoTableViewCell: UITableViewCell {

    private lazy var commandLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.backgroundColor = UIColor.green
        label.text = "git . add"
        label.textAlignment = .center
        label.setContentHuggingPriority(
            UILayoutPriority.required,
            for: .vertical)
        label.setContentCompressionResistancePriority(
            UILayoutPriority.required,
            for: .vertical)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var commandDescriptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.backgroundColor = UIColor.green
        label.text = "adds and starts tracking the file"
        label.textAlignment = .center
        label.numberOfLines = 0
        label.setContentHuggingPriority(UILayoutPriority(rawValue: 230), for: .vertical)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: "gitInfoCell")
        backgroundColor = UIColor.black
        addSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        addSubview(commandLabel)
        addSubview(commandDescriptionLabel)
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            commandLabel.topAnchor.constraint(equalTo: topAnchor),
            commandLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            commandLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 5),
            ])
        
        NSLayoutConstraint.activate([
            commandDescriptionLabel.topAnchor.constraint(equalTo: commandLabel.bottomAnchor, constant: 4),
            commandDescriptionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            commandDescriptionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 5),
            commandDescriptionLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 5)
            ])
    }
}
