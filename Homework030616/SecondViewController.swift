//
//  SecondViewController.swift
//  Homework030616
//
//  Created by Бектур Кадыркулов on 24/3/23.
//

import UIKit
import SnapKit
class SecondViewController: UIViewController {
    let registerLabel: UILabel = {
       let label = UILabel()
        label.text = "REGISTER"
        label.textColor = .white
     
        label.font = .boldSystemFont(ofSize: 28)
        label.textAlignment = .center
       return label
    }()
    let createLabel: UILabel = {
       let label = UILabel()
        label.text = "Create a new account"
        label.textColor = .white
        label.font = .systemFont(ofSize: 20)
        label.textAlignment = .center
       return label
    }()
    let emailLabel: UILabel = {
       let label = UILabel()
        label.text = "Email"
        label.textColor = .white
        label.font = .systemFont(ofSize: 18)
        label.textAlignment = .center
       return label
    }()
    let emailTF: UITextField = {
        let tf = UITextField()
         tf.placeholder = "\tEmail"
         tf.layer.cornerRadius = 12
         tf.layer.backgroundColor = UIColor.white.cgColor
         return tf
    }()
    let usernameLabel: UILabel = {
       let label = UILabel()
        label.text = "Username"
        label.textColor = .white
        label.font = .systemFont(ofSize: 18)
        label.textAlignment = .center
       return label
    }()
    
    let usernameTF: UITextField = {
        let tf = UITextField()
         tf.placeholder = "\tUsername"
         tf.layer.cornerRadius = 12
         tf.layer.backgroundColor = UIColor.white.cgColor
         return tf
    }()
    let mobileNumberLabel: UILabel = {
       let label = UILabel()
        label.text = "Mobile Number"
        label.textColor = .white
        label.font = .systemFont(ofSize: 18)
        label.textAlignment = .center
       return label
    }()
    let mobileNumberTF: UITextField = {
        let tf = UITextField()
         tf.placeholder = "\tMobile Number"
         tf.layer.cornerRadius = 12
         tf.layer.backgroundColor = UIColor.white.cgColor
         return tf
    }()
    let passwordLabel: UILabel = {
       let label = UILabel()
        label.text = "Password"
        label.textColor = .white
        label.font = .systemFont(ofSize: 18)
        label.textAlignment = .center
       return label
    }()
    
    let passwordTF: UITextField = {
        
        let tf = UITextField()
         tf.placeholder = "\tPassword"
         tf.layer.cornerRadius = 12
         tf.layer.backgroundColor = UIColor.white.cgColor
         return tf
    }()
    let eyeBtn: UIButton = {
       let button = UIButton()
        button.setImage(UIImage(systemName: "eye"), for: .normal)
        button.tintColor = .gray
        return button
    }()
    let loginBtn: UIButton = {
       let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.layer.cornerRadius = 16
        button.tintColor = .white
        button.backgroundColor = .systemBlue
        return button
    }()
    @objc func pressedButtonShow() {
            if valueEye {
                valueEye = false
                passwordTF.isSecureTextEntry = false
                eyeBtn.setImage(UIImage(systemName: "eye.fill"), for: .normal)
            } else {
                valueEye = true
                passwordTF.isSecureTextEntry = true
                eyeBtn.setImage(UIImage(systemName: "eye.slash"), for: .normal)
            }
        }
    private func isTextFieldFilled(textField : UITextField) -> Bool {
                 let text = textField.text
        if text!.isEmpty {
                textField.layer.borderWidth = 1
                textField.layer.borderColor = UIColor.red.cgColor
                return false
            }else{
                textField.layer.borderWidth = 0
                return true
            }
    }
    private func initAction(){
       
        loginBtn.addTarget(self, action: #selector(goToNextPage2), for: .touchUpInside)
      
    }
    @objc func goToNextPage2( _ sender:UIButton){
        let vc = ThirdViewController()
        vc.nameValue = emailTF.text ?? "empty"
       
        self.navigationController?.pushViewController(vc, animated: true)
    }
    private var valueEye = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
   initAction()
        view.addSubview(registerLabel)
        registerLabel.snp.makeConstraints { make in
          
            make.height.equalTo(42)
            make.top.equalToSuperview().offset(250)
            make.leading.trailing.equalToSuperview().inset(120)
        }
        view.addSubview(createLabel)
        createLabel.snp.makeConstraints { make in
            make.height.equalTo(30)
            make.centerX.equalToSuperview()
            make.top.equalTo(registerLabel.snp.bottom).offset(0)
            
        }
        
        view.addSubview(emailLabel)
        emailLabel.snp.makeConstraints { make in
            make.height.equalTo(27)
            make.top.equalTo(createLabel.snp.bottom).offset(25)
            make.leading.equalToSuperview().offset(30)
        }
        view.addSubview(emailTF)
        emailTF.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(30)
            make.top.equalTo(emailLabel.snp.bottom).offset(6)
            make.height.equalTo(48)
        }
        view.addSubview(usernameLabel)
        usernameLabel.snp.makeConstraints { make in
            make.height.equalTo(27)
            make.top.equalTo(emailTF.snp.bottom).offset(6)
            make.leading.equalToSuperview().offset(30)
        }
        view.addSubview(usernameTF)
        usernameTF.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(30)
            make.top.equalTo(usernameLabel.snp.bottom).offset(6)
            make.height.equalTo(48)
        }
   
        view.addSubview(mobileNumberLabel)
        mobileNumberLabel.snp.makeConstraints { make in
            make.height.equalTo(27)
            make.top.equalTo(usernameTF.snp.bottom).offset(6)
            make.leading.equalToSuperview().offset(30)
        }
        view.addSubview(mobileNumberTF)
        mobileNumberTF.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(30)
            make.top.equalTo(mobileNumberLabel.snp.bottom).offset(6)
            make.height.equalTo(48)
        }
        view.addSubview(passwordLabel)
        passwordLabel.snp.makeConstraints { make in
            make.height.equalTo(27)
            make.top.equalTo(mobileNumberTF.snp.bottom).offset(6)
            make.leading.equalToSuperview().offset(30)
        }
        
        view.addSubview(passwordTF)
        
        passwordTF.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(30)
            make.top.equalTo(passwordLabel.snp.bottom).offset(6)
            make.height.equalTo(48)
        }
        view.addSubview(eyeBtn)
        eyeBtn.snp.makeConstraints{ make in
            make.width.height.equalTo(25)
            make.trailing.equalToSuperview().offset(-50)
            make.top.equalTo(mobileNumberTF.snp.bottom).offset(49)
        }
        view.addSubview(loginBtn)
        loginBtn.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(40)
            make.height.equalTo(48)
            make.top.equalTo(passwordTF.snp.bottom).offset(59)
        }
        

}
        
  

}
