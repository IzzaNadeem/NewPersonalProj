//
//  ViewController.swift
//  PersonalProject2
//
//  Created by C4Q on 8/25/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class GitInfoViewController: UIViewController {
    var sectionCopy = 0
    let gitInfoView = GitInfoView(frame: CGRect.zero)
//    var commands: [Commands] = [] {
//        didSet {
//
//        }
//    }
    var sections = ["Adding", "Merge Conflicts", "Committing", "Branches"]
  
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(gitInfoView)
        setupConstraints()
        gitInfoView.gitInfoTableView.delegate = self
        gitInfoView.gitInfoTableView.dataSource = self
        //gitInfoView.searchBar.delegate = self
        //    func searchBar(searchBar: UISearchBar, textDidChange textSearched: String)
        //    {
        //        ...your code...
        //    }
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addCommandButtonPressed(sender:)))
    }

    func setupConstraints() {
        gitInfoView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            gitInfoView.topAnchor.constraint(equalTo: view.topAnchor),
            gitInfoView.widthAnchor.constraint(equalTo: view.widthAnchor),
            gitInfoView.heightAnchor.constraint(equalTo: view.heightAnchor),
            gitInfoView.leadingAnchor.constraint(equalTo: view.leadingAnchor)])
    }
    
    @objc func addCommandButtonPressed(sender: UIButton) {
        let destination = AddGitCommandViewController(pickerViewSection: sections)
        navigationController?.pushViewController(destination, animated: true)
    }


}

extension GitInfoViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "gitInfoCell", for: indexPath) as! gitInfoTableViewCell
        //let command = commands[indexPath.row]
        
        return cell
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
   
}

extension GitInfoViewController: UITableViewDelegate {
    
}


