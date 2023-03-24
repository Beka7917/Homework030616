//
//  ThirdViewController.swift
//  Homework030616
//
//  Created by Бектур Кадыркулов on 24/3/23.
//

import UIKit
import SnapKit
class ThirdViewController: UIViewController {

    
    let forgotLabel: UILabel = {
       let label = UILabel()
        label.text = "FORGOT PASSWORD"
        label.textColor = .white
     
        label.font = .boldSystemFont(ofSize: 25)
        label.textAlignment = .center
       return label
    }()
    let emailLabel: UILabel = {
       let label = UILabel()
        label.text = "Enter your email"
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
    let chooseLabel: UILabel = {
       let label = UILabel()
        label.text = "Choose another method"
        label.textColor = .gray
        label.font = .systemFont(ofSize: 16)
        label.textAlignment = .center
       return label
    }()
    let heedHelpBtn: UIButton = {
       let button = UIButton()
        button.setTitle("Heed help?", for: .normal)
        button.layer.cornerRadius = 16
        button.tintColor = .white
        return button
    }()
    let sendOtpBtn: UIButton = {
       let button = UIButton()
        button.setTitle("Send OTP", for: .normal)
        button.layer.cornerRadius = 16
        button.tintColor = .white
        button.backgroundColor = .systemBlue
        return button
    }()
    var nameValue:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
       
        view.addSubview(forgotLabel)
        forgotLabel.snp.makeConstraints { make in
          
            make.height.equalTo(42)
            make.top.equalToSuperview().offset(250)
            make.leading.trailing.equalToSuperview().inset(75)
        }
        view.addSubview(emailLabel)
        emailLabel.snp.makeConstraints { make in
            make.height.equalTo(27)
            make.top.equalTo(forgotLabel.snp.bottom).offset(61)
            make.leading.equalToSuperview().offset(30)
        }
        view.addSubview(emailTF)
        emailTF.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(30)
            make.top.equalTo(emailLabel.snp.bottom).offset(6)
            make.height.equalTo(48)
        }
        view.addSubview(chooseLabel)
        chooseLabel.snp.makeConstraints { make in
            make.height.equalTo(24)
            make.leading.equalToSuperview().offset(60)
            make.top.equalTo(emailTF.snp.bottom).offset(14)
        }
        
        view.addSubview(heedHelpBtn)
        heedHelpBtn.snp.makeConstraints { make in
            make.leading.equalTo(chooseLabel.snp.trailing).offset(10)
            make.height.equalTo(24)
            make.top.equalTo(emailTF.snp.bottom).offset(14)
        }
        view.addSubview(sendOtpBtn)
        sendOtpBtn.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(40)
            make.height.equalTo(48)
            make.top.equalTo(chooseLabel.snp.bottom).offset(31)
        }
        emailTF.text = nameValue
    }
    
}
