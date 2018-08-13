//
//  WelcomeController.swift
//  invationUFO
//
//  Created by Zikisa Cale Sogaxa on 2018/08/10.
//  Copyright © 2018 Zikisa Cale Sogaxa. All rights reserved.
//

import UIKit

class Welcome: UIViewController {
	
	public let logoImage: UIImageView = {
		let logoImage = UIImageView()
		logoImage.image = #imageLiteral(resourceName: "logo")
		logoImage.translatesAutoresizingMaskIntoConstraints = false
		return logoImage
	}()
	
	private lazy var getStartedButton: UIButton = {
		let button = UIButton()
		button.addTarget(self, action: #selector(showLoginConroller), for: UIControlEvents.touchUpInside)
		button.layer.cornerRadius = 5
		button.layer.masksToBounds = true
		button.backgroundColor = UIColor(r: 165, g: 223, b: 147)
		button.setTitle("Board Ship", for: UIControlState.normal)
		button.sizeToFit()
		button.translatesAutoresizingMaskIntoConstraints = false
		return button
	}()

    override func viewDidLoad() {
        super.viewDidLoad()
		self.navigationController?.navigationBar.isHidden = true
		view.backgroundColor = UIColor(r: 62, g: 116, b: 110)
		configureView()
    }
	
	func configureView() {
		
		self.view.addSubview(logoImage)
		self.view.addSubview(getStartedButton)
		
		self.logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		self.logoImage.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
		self.logoImage.heightAnchor.constraint(equalToConstant: 118).isActive = true
		self.logoImage.widthAnchor.constraint(equalToConstant: 128).isActive = true
		
		self.getStartedButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		self.getStartedButton.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 63).isActive = true
		self.getStartedButton.heightAnchor.constraint(equalToConstant: 80).isActive = true
		self.getStartedButton.widthAnchor.constraint(equalToConstant: 273).isActive = true
		
	}
	
	override var preferredStatusBarStyle: UIStatusBarStyle {
		return .lightContent
	}
	
	@objc func showLoginConroller() {
		self.navigationController?.pushViewController(LoginController(), animated: true)
	}

}

