//
//  AddGitCommandView.swift
//  PersonalProject2
//
//  Created by C4Q on 9/23/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class AddGitCommandView: UIView {
  
  lazy var headerLabel: UILabel = {
    let dn = UILabel()
    dn.text = "Add a new Command and Description"
    dn.textAlignment = .center
    dn.textColor = UIColor.darkGray
    dn.font = UIFont.boldSystemFont(ofSize: 23)
    dn.translatesAutoresizingMaskIntoConstraints = false
    return dn
  }()
  
  lazy var gitCommandLabel: UILabel = {
    let dn = UILabel()
    dn.text = "Enter new command below"
    dn.textAlignment = .center
    dn.textColor = UIColor.darkGray
    dn.font = UIFont(name: "HelveticaNeue-Medium", size: 17)
    dn.translatesAutoresizingMaskIntoConstraints = false
    return dn
  }()
  
  lazy var gitTextField: UITextField = {
    let textField = UITextField()
    textField.textAlignment = .center
    textField.font = UIFont.boldSystemFont(ofSize: 16)
    textField.placeholder = "Add a new command here"
    textField.translatesAutoresizingMaskIntoConstraints = false
    textField.backgroundColor = UIColor.darkGray
    textField.textColor = UIColor.blue
    return textField
  }()
  
  lazy var gitDescriptionLabel: UILabel = {
    let dn = UILabel()
    dn.text = "Enter description below"
    dn.textAlignment = .center
    dn.textColor = UIColor.darkGray
    dn.font = UIFont(name: "HelveticaNeue-Medium", size: 17)
    dn.translatesAutoresizingMaskIntoConstraints = false
    return dn
  }()
  
  lazy var gitCommandDescription: UITextView = {
    let textView = UITextView()
    textView.textAlignment = .center
    textView.isEditable = true
    textView.allowsEditingTextAttributes = true
    textView.font = UIFont.boldSystemFont(ofSize: 16)
    textView.allowsEditingTextAttributes = true
    textView.backgroundColor = UIColor.darkGray
    textView.textColor = UIColor.blue
    textView.translatesAutoresizingMaskIntoConstraints = false
    return textView
  }()
  
  lazy var sectionPicker: UIPickerView = {
    var pickerView = UIPickerView()
    pickerView.backgroundColor = UIColor.darkGray
    pickerView.translatesAutoresizingMaskIntoConstraints = false
    return pickerView
  }()
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    commonInit()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  private func commonInit() {
    addSubviews()
    setupConstraints()
  }
  
  private func addSubviews() {
    addSubview(headerLabel)
    addSubview(gitCommandLabel)
    addSubview(gitTextField)
    addSubview(gitDescriptionLabel)
    addSubview(gitCommandDescription)
    addSubview(sectionPicker)
  }
  
  private func setupConstraints() {
    NSLayoutConstraint.activate(
      [headerLabel.topAnchor.constraint(equalTo: topAnchor, constant: 15),
       headerLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
       headerLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.95),
       headerLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.09)
      ])
    
    NSLayoutConstraint.activate(
      [gitCommandLabel.topAnchor.constraint(equalTo: headerLabel.bottomAnchor, constant: 40),
       gitCommandLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
       gitCommandLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.60),
       gitCommandLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.03)
      ])
    
    NSLayoutConstraint.activate(
      [gitTextField.topAnchor.constraint(equalTo: gitCommandLabel.bottomAnchor, constant: 8),
       gitTextField.centerXAnchor.constraint(equalTo: centerXAnchor),
       gitTextField.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.60),
       gitTextField.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.07)
      ])
    
    NSLayoutConstraint.activate(
      [gitDescriptionLabel.topAnchor.constraint(equalTo: gitTextField.bottomAnchor, constant: 50),
       gitDescriptionLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
       gitDescriptionLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.60),
       gitDescriptionLabel.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.04)
      ])
    
    NSLayoutConstraint.activate(
      [gitCommandDescription.topAnchor.constraint(equalTo: gitDescriptionLabel.bottomAnchor, constant: 8),
       gitCommandDescription.centerXAnchor.constraint(equalTo: centerXAnchor),
       gitCommandDescription.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.60),
       gitCommandDescription.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.15)
      ])
    
    NSLayoutConstraint.activate(
      [sectionPicker.topAnchor.constraint(equalTo: gitCommandDescription.bottomAnchor, constant: 40),
       sectionPicker.centerXAnchor.constraint(equalTo: centerXAnchor),
       sectionPicker.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.60),
       sectionPicker.heightAnchor.constraint(equalTo: heightAnchor, multiplier: 0.30)])
  }
  
}
