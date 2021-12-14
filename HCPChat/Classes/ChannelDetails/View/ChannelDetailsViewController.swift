//
//  ChannelDetailsViewController.swift
//  
//
//  Created by Dilermando Barbosa Junior on 08/12/21.
//

import Foundation
import UIKit

class ChannelDetailsViewController: UIViewController {
  
  var coordinator: MainCoordinator?
  
  var viewModel: ChannelDetailsViewModel!
  
  let channelDetailsUserCellIndentifier: String = "ChannelDetailsUserCell"
  
  @IBOutlet weak var tableView: UITableView!
  
  init(with viewModel: ChannelDetailsViewModel = ChannelDetailsViewModel(members: [])) {
      
      super.init(nibName: "ChannelDetailsViewController", bundle: HCPChat.bundle)
      
      self.viewModel = viewModel
      
      // title = "Confirmação"
      
  }
  
  required init?(coder: NSCoder) {
      super.init(coder: coder)
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    tableView.delegate = self
    tableView.dataSource = self
    
    tableView.register(
      UINib(nibName: channelDetailsUserCellIndentifier, bundle: HCPChat.bundle),
      forCellReuseIdentifier: channelDetailsUserCellIndentifier
    )
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    setLeftBarButtonItem()
  }
  
  private func setLeftBarButtonItem() {
    self.navigationItem.hidesBackButton = true
    let backButtonImage = UIImage(named: "icon_back_arrow", in: HCPChat.bundle, with: nil)?.withTintColor(.primaryBlack, renderingMode: .alwaysOriginal)
    navigationItem.leftBarButtonItem = UIBarButtonItem(image: backButtonImage, style: .plain, target: self, action: #selector(didDismissChannelDetails))
  }
  
  @objc func didDismissChannelDetails() {
    self.navigationController?.popViewController(animated: true)
  }
}

extension ChannelDetailsViewController: UITableViewDataSource, UITableViewDelegate {
 
  func numberOfSections(in tableView: UITableView) -> Int {
    return 1
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return viewModel.members.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: channelDetailsUserCellIndentifier) as! ChannelDetailsUserCell
    
    cell.configure(user: viewModel.members[indexPath.row])
    
    return cell
  }
}
