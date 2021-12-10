//
//  ChannelDetailsViewController.swift
//  
//
//  Created by Dilermando Barbosa Junior on 08/12/21.
//

import Foundation
import UIKit

class ChannelDetailsViewController: UIViewController {
  
  var coordinator: ChannelDetailsCoordinator?
  
  var viewModel = ChannelDetailsViewModel()
  
  let channelDetailsUserCellIndentifier: String = "ChannelDetailsUserCell"
  
  @IBOutlet weak var tableView: UITableView!
  
  init() {
    super.init(nibName: "ChannelDetailsViewController", bundle: Bundle.module)
  }
  
  required init?(coder: NSCoder) {
      super.init(coder: coder)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableView.delegate = self
    tableView.dataSource = self
    
    tableView.register(UINib(nibName: channelDetailsUserCellIndentifier, bundle: nil), forCellReuseIdentifier: channelDetailsUserCellIndentifier)
  }
  
  private func setLeftBarButtonItem() {
    navigationItem.leftBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: #selector(didDismissChannelDetails))
  }
  
  @objc private func didDismissChannelDetails() {
    navigationController?.popViewController(animated: true)
  }
  
}

extension ChannelDetailsViewController: UITableViewDataSource, UITableViewDelegate {
 
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return viewModel.users.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: channelDetailsUserCellIndentifier) as! ChannelDetailsUserCell
    
    cell.configure(user: viewModel.users[indexPath.row])
    
    return cell
  }
}
