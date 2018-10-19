//
//  terminalInfoView.swift
//  PersonalProject2
//
//  Created by C4Q on 9/1/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class GitInfoView: UIView {
  
  lazy var searchBar: UISearchBar = {
    let searchBar = UISearchBar()
    searchBar.placeholder = " Search..."
    searchBar.translatesAutoresizingMaskIntoConstraints = false
    searchBar.sizeToFit()
    searchBar.backgroundColor = UIColor.blue
    return searchBar
  }()
  
  lazy var gitInfoTableView: UITableView = {
    let tv = UITableView()
    tv.register(gitInfoTableViewCell.self, forCellReuseIdentifier: "gitInfoCell")
    tv.translatesAutoresizingMaskIntoConstraints = false
    tv.isHidden = false
    tv.backgroundColor = UIColor.red
    return tv
  }()
  
  override init(frame: CGRect) {
    super.init(frame: UIScreen.main.bounds)
    commonInit()
  }
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    commonInit()
  }
  
  private func commonInit() {
    addSubviews()
    setupConstraints()
  }
  
  func addSubviews() {
    addSubview(searchBar)
    addSubview(gitInfoTableView)
  }
  
  func setupConstraints() {
    NSLayoutConstraint.activate([
      searchBar.topAnchor.constraint(equalTo: topAnchor),
      searchBar.trailingAnchor.constraint(equalTo: trailingAnchor),
      searchBar.leadingAnchor.constraint(equalTo: leadingAnchor),
      // searchBar.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.02)
      ])
    
    NSLayoutConstraint.activate([
      gitInfoTableView.topAnchor.constraint(equalTo: searchBar.bottomAnchor, constant: 10),
      gitInfoTableView.leadingAnchor.constraint(equalTo: leadingAnchor),
      gitInfoTableView.trailingAnchor.constraint(equalTo: trailingAnchor),
      gitInfoTableView.bottomAnchor.constraint(equalTo: bottomAnchor),
      ])
  }
}
