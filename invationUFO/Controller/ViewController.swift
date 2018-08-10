//
//  ViewController.swift
//  invationUFO
//
//  Created by Zikisa Cale Sogaxa on 2018/08/10.
//  Copyright © 2018 Zikisa Cale Sogaxa. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
		
		
		navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
    }
	
	@objc func handleLogout() {
		let loginController = LoginController()
		present(loginController, animated: true, completion: nil)
	}

}

