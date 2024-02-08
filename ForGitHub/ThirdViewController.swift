//
//  ThirdViewController.swift
//  ForGitHub
//
//  Created by Telegey Nurbekova on 08/02/24.
//

import UIKit

class ThirdViewController: UIViewController {
    
    private var welcomeLabel: UILabel = {
        let view = UILabel()
        view.text = "Welcome to the Home!"
        view.font = .systemFont(ofSize: 30, weight: .light)
        view.textColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var welcomeImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "welcome")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        
        view.backgroundColor = .white
        
        // welcome label
        view.addSubview(welcomeLabel)
        NSLayoutConstraint.activate(
            [welcomeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 150),
             welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
            ])
        
        view.addSubview(welcomeImage)
        NSLayoutConstraint.activate(
            [welcomeImage.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 20),
             welcomeImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             welcomeImage.widthAnchor.constraint(equalToConstant: 300),
             welcomeImage.heightAnchor.constraint(equalToConstant: 155)
            ])
    }

}

