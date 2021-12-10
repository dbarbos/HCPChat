//
//  ViewController.swift
//  HCPChat
//
//  Created by dbarbos on 12/10/2021.
//  Copyright (c) 2021 dbarbos. All rights reserved.
//

import UIKit
import HCPChat

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
  
  @IBAction func buttonTapped(_ sender: Any) {
    guard let navigationController = self.navigationController else { return }
    HCPChat.start(flow: .channelDetails, from: navigationController)
  }

}

