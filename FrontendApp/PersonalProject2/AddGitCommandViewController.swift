//
//  AddGitCommandViewController.swift
//  PersonalProject2
//
//  Created by C4Q on 9/22/18.
//  Copyright © 2018 C4Q. All rights reserved.
//

import UIKit

class AddGitCommandViewController: UIViewController {
  
  private var addGitCommandView = AddGitCommandView(frame: CGRect.zero)
  var pickerViewSection: [String]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.addSubview(addGitCommandView)
    setupConstraint()
    navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Submit", style: .plain, target: self, action: #selector(submitButtonTapped))
    addGitCommandView.sectionPicker.dataSource = self
    addGitCommandView.sectionPicker.delegate = self
  }
 
  init(pickerViewSection: [String]) {
    self.pickerViewSection = pickerViewSection
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func setupConstraint() {
    self.edgesForExtendedLayout = []
    addGitCommandView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate(
      [addGitCommandView.topAnchor.constraint(equalTo: view.topAnchor),
       addGitCommandView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
       addGitCommandView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
       addGitCommandView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
      ])
  }
  
  @objc func submitButtonTapped(sender: UIButton) {
    
  }
  
}

extension AddGitCommandViewController: UIPickerViewDelegate, UIPickerViewDataSource {
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return pickerViewSection.count
  }
  
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
  }

  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return pickerViewSection[row]
  }
}
  
  
//}
//protocol CreateEventViewControllerDelegate: class {
//    func didCreateEvent()
//}
//class CreateEventViewController: UIViewController, UITextViewDelegate {
//
//    private lazy var createEventView = CreateEventView(frame: self.view.safeAreaLayoutGuide.layoutFrame)
//
//    var event: Event?
//    var day: Int?
//    var month: Int?
//    var year: Int?
//    weak var delegate: CreateEventViewControllerDelegate?
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        view.addSubview(createEventView)
//        createEventView.eventDescription.delegate = self
//        createEventView.eventDescription.text = "Enter Description"
//        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Submit", style: .plain, target: self, action: #selector(submitButtonTapped(sender:)))
//    }
//
//    func textViewDidBeginEditing(_ textView: UITextView) {
//        textView.text = ""
//    }
//    func textViewDidEndEditing(_ textView: UITextView) {
//        if textView.text.isEmpty {
//            textView.text = "Enter Event Description"
//        }
//    }
//
//    @objc func submitButtonTapped(sender:UIButton) {
//        guard let day = day, let month = month, let year = year else {
//            print("error here")
//            return
//        }
//        let startTime = String(createEventView.startTimePicker.date.timeIntervalSince1970) //NSDATEFORMATTER //NSlocale //dateFormatter.dateStyle = .medium
//        //dateFormatter.timeStyle = .none
//        let endTime = String(createEventView.endTimePicker.date.timeIntervalSince1970)
//
//
//        let eventToCreate = Event(_id: nil, description: createEventView.eventDescription.text, startTime: startTime, endTime: endTime, day: day, month: month, year: year)
//        EventAPIClient.manager.postEventToServer(event: eventToCreate, completionHandler: { (response) in
//            print((response as! HTTPURLResponse).statusCode)
//            self.delegate?.didCreateEvent()
//        }, errorHandler: { print($0) })
//        self.navigationController?.popViewController(animated: true)
//    }
//}
