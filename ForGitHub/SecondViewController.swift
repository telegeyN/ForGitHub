//
//  SecondViewController.swift
//  ForGitHub
//
//  Created by Telegey Nurbekova on 08/02/24.
//
import UIKit

class SecondViewController: UIViewController {
    
    private var mapImage: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "map")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    
    private var getStartedLabel: UILabel = {
        let view = UILabel()
        view.text = "Get Started"
 //       view.font = UIFont.monospacedSystemFont(ofSize: 27, weight: .bold)
        view.font = .systemFont(ofSize: 27, weight: .semibold)
        view.textColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var miniLabel: UILabel = {
        let view = UILabel()
        view.text = "by creating a free account."
        view.font = UIFont.monospacedSystemFont(ofSize: 12, weight: .light)
        view.textColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var nameLabel: UILabel = {
        let view = UILabel()
        view.text = "Input your First Name and Last Name"
        view.font = .systemFont(ofSize: 10, weight: .medium)
        view.textColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var nameTextField: UITextField = {
        let view = UITextField()
        view.font = .systemFont(ofSize: 12, weight: .light)
        view.placeholder = "  Full name"
        view.backgroundColor = UIColor(red: 0.77, green: 0.77, blue: 0.77, alpha: 0.2)
        view.layer.cornerRadius = 12
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var phoneLabel: UILabel = {
        let view = UILabel()
        view.text = "Input your Phone number"
        view.font = .systemFont(ofSize: 10, weight: .medium)
        view.textColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var phoneTextField: UITextField = {
        let view = UITextField()
        view.font = .systemFont(ofSize: 12, weight: .light)
        view.placeholder = "  Phone number"
        view.backgroundColor = UIColor(red: 0.77, green: 0.77, blue: 0.77, alpha: 0.2)
        view.layer.cornerRadius = 12
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var passwordLabel: UILabel = {
        let view = UILabel()
        view.text = "Create Password"
        view.font = .systemFont(ofSize: 10, weight: .medium)
        view.textColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var passwordTextField: UITextField = {
        let view = UITextField()
        view.font = .systemFont(ofSize: 12, weight: .light)
        view.placeholder = "  Password"
        view.backgroundColor = UIColor(red: 0.77, green: 0.77, blue: 0.77, alpha: 0.2)
        view.layer.cornerRadius = 12
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var confirmLabel: UILabel = {
        let view = UILabel()
        view.text = "Confirm your Password"
        view.font = .systemFont(ofSize: 10, weight: .medium)
        view.textColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var confirmPasswordTextField: UITextField = {
        let view = UITextField()
        view.font = .systemFont(ofSize: 12, weight: .light)
        view.placeholder = "  Confirm Password"
        view.backgroundColor = UIColor(red: 0.77, green: 0.77, blue: 0.77, alpha: 0.2)
        view.layer.cornerRadius = 12
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var agreeSwitch: UISwitch = {
        let view = UISwitch()
        view.onTintColor = UIColor(red: 0.42, green: 0.39, blue: 1.0, alpha: 1.0)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var agreeLabel: UILabel = {
        let view = UILabel()
        view.text = "By clicking the button you agree to our Terms and Conditions."
        view.font = .systemFont(ofSize: 10, weight: .light)
        view.textColor = .black
        view.numberOfLines = 0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private var nextBtn: UIButton = {
        let view = UIButton(type: .system)
        view.setTitle("Next", for: .normal)
        view.backgroundColor = UIColor(red: 0.42, green: 0.39, blue: 1.0, alpha: 1.0)
        view.setTitleColor(.white, for: .normal)
        view.layer.cornerRadius = 15
        view.translatesAutoresizingMaskIntoConstraints = false
        view.addTarget(nil, action: #selector(nextBtnTapped), for: .touchUpInside)
        return view
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    private func setupUI() {
        
        view.backgroundColor = .white
        
        //map image
        view.addSubview(mapImage)
        NSLayoutConstraint.activate(
            [mapImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
             mapImage.leadingAnchor.constraint(equalTo:  view.leadingAnchor, constant: 55),
             mapImage.heightAnchor.constraint(equalToConstant: 150),
             mapImage.widthAnchor.constraint(equalToConstant: 200)
            ])
        
        // get started label
        view.addSubview(getStartedLabel)
        NSLayoutConstraint.activate(
            [getStartedLabel.topAnchor.constraint(equalTo: mapImage.bottomAnchor, constant: -45),
             getStartedLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 85)
            ])
        
        // mini label
        view.addSubview(miniLabel)
        NSLayoutConstraint.activate(
            [miniLabel.topAnchor.constraint(equalTo: getStartedLabel.bottomAnchor, constant: 7),
             miniLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 55)
            ])
        
        // name label
        view.addSubview(nameLabel)
        NSLayoutConstraint.activate(
            [nameLabel.topAnchor.constraint(equalTo: miniLabel.bottomAnchor, constant: 30),
             nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23),
            ])
        
        // name text field
        view.addSubview(nameTextField)
        NSLayoutConstraint.activate(
            [nameTextField.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 3),
             nameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
             nameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
             nameTextField.heightAnchor.constraint(equalToConstant: 40)
            ])
        
        // phone label
        view.addSubview(phoneLabel)
        NSLayoutConstraint.activate(
            [phoneLabel.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 15),
             phoneLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23),
            ])
        
        // phone text field
        view.addSubview(phoneTextField)
        NSLayoutConstraint.activate(
            [phoneTextField.topAnchor.constraint(equalTo: phoneLabel.bottomAnchor, constant: 3),
             phoneTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
             phoneTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
             phoneTextField.heightAnchor.constraint(equalToConstant: 40)
            ])
        
        // password label
        view.addSubview(passwordLabel)
        NSLayoutConstraint.activate(
            [passwordLabel.topAnchor.constraint(equalTo: phoneTextField.bottomAnchor, constant: 15),
             passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23),
            ])
        
        // password text field
        view.addSubview(passwordTextField)
        NSLayoutConstraint.activate(
            [passwordTextField.topAnchor.constraint(equalTo: passwordLabel.bottomAnchor, constant: 3),
             passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
             passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
             passwordTextField.heightAnchor.constraint(equalToConstant: 40)
            ])
        
        // confirm label
        view.addSubview(confirmLabel)
        NSLayoutConstraint.activate(
            [confirmLabel.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 15),
             confirmLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 23),
            ])
        
        // confirm password text field
        view.addSubview(confirmPasswordTextField)
        NSLayoutConstraint.activate(
            [confirmPasswordTextField.topAnchor.constraint(equalTo: confirmLabel.bottomAnchor, constant: 3),
             confirmPasswordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
             confirmPasswordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
             confirmPasswordTextField.heightAnchor.constraint(equalToConstant: 40)
            ])
        
        // agree switch
        view.addSubview(agreeSwitch)
        NSLayoutConstraint.activate(
            [agreeSwitch.topAnchor.constraint(equalTo: confirmPasswordTextField.bottomAnchor, constant: 15),
             agreeSwitch.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
            ])
        
        // agree text
        view.addSubview(agreeLabel)
        NSLayoutConstraint.activate([
            agreeLabel.centerYAnchor.constraint(equalTo: agreeSwitch.centerYAnchor),
            agreeLabel.leadingAnchor.constraint(equalTo: agreeSwitch.trailingAnchor, constant: 5),
            agreeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
        
        // next button
        view.addSubview(nextBtn)
        NSLayoutConstraint.activate(
            [nextBtn.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10),
             nextBtn.leadingAnchor.constraint(equalTo:  view.leadingAnchor, constant: 25),
             nextBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
             nextBtn.heightAnchor.constraint(equalToConstant: 45)
            ])
    }
    
    @objc func nextBtnTapped() {
        
        if check() {
            let vc = ThirdViewController()
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    private func check() -> Bool {
        
        var isValid = false
        
        nameValueValidate(
            textField: nameTextField,
            label: nameLabel,
            error: "Please input your First name and Last name"
        )
        
        phoneValueValidate(
            textField: phoneTextField,
            label: phoneLabel,
            error: "Please input your Phone number with the Country Code"
        )
        
        passwordValueValidate(
            textField: passwordTextField,
            label: passwordLabel,
            error: "Your Password must contain 8 or more symbols!"
        )
        
        if agreeSwitch.isOn == false{
            showAlert(message: "Please agree to our Terms and Conditions.")
        } else {
            if nameTextField.text?.count ?? 0 >= 5 &&
                phoneTextField.text?.count ?? 0 >= 10 &&
                passwordTextField.text?.count ?? 0 >= 8 &&
                checkPasswords() == true {
                isValid = true
                
            }
        }
        
        return isValid
    }
    
    private func nameValueValidate(textField: UITextField, label: UILabel, error: String){
        if textField.text?.count ?? 0 < 5 {
            label.text = error
            label.textColor = .red
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.red.cgColor
        } else {
            label.text = "Great Job!"
            label.textColor = .black
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.lightGray.cgColor
        }
    }
    
    private func phoneValueValidate(textField: UITextField, label: UILabel, error: String){
        
        if textField.text?.count ?? 0 < 10 {
            label.text = error
            label.textColor = .red
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.red.cgColor
        } else {
            label.text = "Great Job!"
            label.textColor = .black
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.lightGray.cgColor
        }
    }
    
    private func passwordValueValidate(textField: UITextField, label: UILabel, error: String){
        
        if textField.text?.count ?? 0 < 8 {
            label.text = error
            label.textColor = .red
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.red.cgColor
        } else {
            label.text = "Great Job!"
            label.textColor = .black
            textField.layer.borderWidth = 1
            textField.layer.borderColor = UIColor.lightGray.cgColor
        }
    }
    
    private func checkPasswords() -> Bool {

        if passwordTextField.text != confirmPasswordTextField.text {
            confirmLabel.text = "Passwords do not match!"
            confirmLabel.textColor = .red
            confirmPasswordTextField.layer.borderWidth = 1
            confirmPasswordTextField.layer.borderColor = UIColor.red.cgColor
            return false
        } else {
            confirmLabel.text = "Great Job!"
            confirmLabel.textColor = .black
            confirmPasswordTextField.layer.borderWidth = 1
            confirmPasswordTextField.layer.borderColor = UIColor.lightGray.cgColor
            return true
        }
        
    }
    
    private func showAlert(message: String) {
        let alert = UIAlertController(title: "Attention", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(okAction)
        present(alert, animated: true, completion: nil)
    }

}
