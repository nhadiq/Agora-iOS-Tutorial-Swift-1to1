//
//  SetChannelViewController.swift
//  Agora iOS Tutorial
//
//  Created by Sid on 1/9/18.
//  Copyright © 2018 Agora.io. All rights reserved.
//

import Foundation
import UIKit

class SetChannelViewController: UIViewController {

    @IBOutlet weak var channelName: UITextField!
    
    @IBAction func startCall(_ sender: UIButton) {
        if (channelName.text != nil) {
            self.performSegue(withIdentifier: "startCall", sender: self)
        } else {
            print("Enter Channel Name")
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewController = segue.destination as? VideoChatViewController {
            viewController.channel = channelName.text!
        }
    }
}