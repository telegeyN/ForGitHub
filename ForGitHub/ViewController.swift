//
//  ViewController.swift
//  ForGitHub
//
//  Created by Telegey Nurbekova on 08/02/24.
//

import UIKit

import UIKit

class ViewController: UIViewController {
    
    private var logoImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "logo")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    
    private var logoNameLabel: UILabel = {
        let view = UILabel()
        view.text = "Explora"
        view.font = UIFont.monospacedSystemFont(ofSize: 20, weight: .light)
        view.textColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var waveImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "waves")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    
    private var getStartedBtn: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("Get Started", for: .normal)
        view.backgroundColor = .white
        view.setTitleColor(UIColor(red: 0.42, green: 0.39, blue: 1.0, alpha: 1.0), for: .normal)
        view.layer.cornerRadius = 15
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addTarget(nil, action: #selector(getStartedBtnTapped), for: .touchUpInside)
        return view
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    private func setupUI() {
        
        view.backgroundColor = UIColor(red: 0.42, green: 0.39, blue: 1.0, alpha: 1.0)
        
        //logo image
        view.addSubview(logoImage)
        NSLayoutConstraint.activate(
            [logoImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 225),
             logoImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
             logoImage.heightAnchor.constraint(equalToConstant: 150),
             logoImage.widthAnchor.constraint(equalToConstant: 200)
            ])
        
        //logo name
        view.addSubview(logoNameLabel)
        NSLayoutConstraint.activate(
            [logoNameLabel.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 2),
             logoNameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 110)
            ])
        
        //wave image
        view.addSubview(waveImage)
        NSLayoutConstraint.activate(
            [waveImage.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 8),
             waveImage.leadingAnchor.constraint(equalTo:  view.leadingAnchor, constant: 200),
             waveImage.heightAnchor.constraint(equalToConstant: 16.59),
             waveImage.widthAnchor.constraint(equalToConstant: 40)
            ])
        
        //get started button
        view.addSubview(getStartedBtn)
        NSLayoutConstraint.activate(
            [getStartedBtn.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
             getStartedBtn.leadingAnchor.constraint(equalTo:  view.leadingAnchor, constant: 25),
             getStartedBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
             getStartedBtn.heightAnchor.constraint(equalToConstant: 45)
            ])
    }
    
    @objc func getStartedBtnTapped() {
        let vc = SecondViewController()
        
        navigationController?.pushViewController(vc, animated: true)
        
    }


}
