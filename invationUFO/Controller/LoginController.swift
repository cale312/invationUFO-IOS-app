//
//  LoginController.swift
//  invationUFO
//
//  Created by Zikisa Cale Sogaxa on 2018/08/10.
//  Copyright © 2018 Zikisa Cale Sogaxa. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
	
	public let logoImage: UIImageView = {
		let logoImage = UIImageView()
		logoImage.image = #imageLiteral(resourceName: "logo")
		logoImage.translatesAutoresizingMaskIntoConstraints = false
		return logoImage
	}()
	
	public let headingLabel: UILabel = {
		let label = UILabel()
		label.textAlignment = .center
		label.text = "ACCESS MOTHERSHIP"
		label.textColor = UIColor.white
		label.font = UIFont(name:"Futura", size: 25.0)
		label.translatesAutoresizingMaskIntoConstraints = false
		return label
	}()
	
	private lazy var loginButton: UIButton = {
		let button = UIButton()
		button.setTitle("Board Ship", for: UIControlState.normal)
		button.sizeToFit()
		button.backgroundColor = UIColor(r: 165, g: 223, b: 147)
		button.translatesAutoresizingMaskIntoConstraints = false
		button.layer.cornerRadius = 5
		button.layer.masksToBounds = true
		return button
	}()
	
	let mothershipNameInput: UITextField = {
		let textField = UITextField()
		textField.placeholder = "Mothership name"
		textField.textAlignment = .center
		textField.backgroundColor = UIColor.white
		textField.translatesAutoresizingMaskIntoConstraints = false
		textField.layer.cornerRadius = 5
		textField.layer.masksToBounds = true
		return textField
	}()
	
	let mothershipPassphraseInput: UITextField = {
		let textField = UITextField()
		textField.placeholder = "Enter passphrase"
		textField.textAlignment = .center
		textField.backgroundColor = UIColor.white
		textField.translatesAutoresizingMaskIntoConstraints = false
		textField.layer.cornerRadius = 5
		textField.layer.masksToBounds = true
		return textField
	}()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor(r: 62, g: 116, b: 110)
		configureView()
		
    }
	
	func configureView() {
		
		self.view.addSubview(headingLabel)
		self.view.addSubview(mothershipNameInput)
		self.view.addSubview(mothershipPassphraseInput)
		self.view.addSubview(loginButton)
		self.view.addSubview(logoImage)
		
		self.logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		self.logoImage.bottomAnchor.constraint(equalTo: headingLabel.topAnchor, constant: -36).isActive = true
		self.logoImage.heightAnchor.constraint(equalToConstant: 57).isActive = true
		self.logoImage.widthAnchor.constraint(equalToConstant: 62).isActive = true
		
		self.headingLabel.bottomAnchor.constraint(equalTo: mothershipNameInput.topAnchor, constant: -43).isActive = true
		self.headingLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
		self.headingLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -16).isActive = true
		self.headingLabel.heightAnchor.constraint(equalToConstant: 36.0).isActive = true
		
		self.mothershipNameInput.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		self.mothershipNameInput.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
		self.mothershipNameInput.widthAnchor.constraint(equalToConstant: 241).isActive = true
		self.mothershipNameInput.heightAnchor.constraint(equalToConstant: 47).isActive = true
		
		self.mothershipPassphraseInput.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		self.mothershipPassphraseInput.widthAnchor.constraint(equalToConstant: 241).isActive = true
		self.mothershipPassphraseInput.heightAnchor.constraint(equalToConstant: 47).isActive = true
		self.mothershipPassphraseInput.topAnchor.constraint(equalTo: mothershipNameInput.bottomAnchor, constant: 27).isActive = true
		
		self.loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
		self.loginButton.heightAnchor.constraint(equalToConstant: 80).isActive = true
		self.loginButton.widthAnchor.constraint(equalToConstant: 273).isActive = true
		self.loginButton.topAnchor.constraint(equalTo: mothershipPassphraseInput.bottomAnchor, constant: 79).isActive = true
	}
	
	override var preferredStatusBarStyle: UIStatusBarStyle {
		return .lightContent
	}

}

extension UIColor {
	
	convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
		self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
	}
	
}
