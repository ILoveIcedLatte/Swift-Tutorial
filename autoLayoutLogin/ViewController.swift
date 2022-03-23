//
//  ViewController.swift
//  autoLayoutLogin
//
//  Created by Dilara Şimşek on 23.03.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //create username textfield
        let tfUsername = UITextField(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        tfUsername.placeholder = "Username"
        tfUsername.backgroundColor = .white
        tfUsername.borderStyle = .roundedRect
        tfUsername.textColor = .systemPink
        tfUsername.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        view.addSubview(tfUsername)
        
        //create password textfield
        let tfPassword = UITextField(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        tfPassword.placeholder = "Password"
        tfPassword.backgroundColor = .white
        tfPassword.borderStyle = .roundedRect
        tfPassword.textColor = .systemPink
        tfPassword.font = UIFont.systemFont(ofSize: 12, weight: .regular)
        view.addSubview(tfPassword)
        
        //create button
        let btnLogin = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        btnLogin.setTitle("Log In", for: .normal)
        btnLogin.backgroundColor = .systemPink
        btnLogin.titleLabel?.textColor = .white
        btnLogin.titleLabel?.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        view.addSubview(btnLogin)
        
        //constraint vermeye başlamadan önce oluşturulan objelerin kullanılan view a eklenmiş olması gerekir -> view.addSubview -> bu sayede eklenen obje view hiyerarşisi içinde bulunur
        
        
        tfUsername.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            
            //horizontally center
            tfUsername.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            //vertically center -> contant: -200 -> orta noktadan 200 çıkarılır
            tfUsername.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -200),
            tfUsername.heightAnchor.constraint(equalToConstant: 70),
            //ekranın genişliğinin %80i kadar olsun
            tfUsername.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.8)
        ])
        
        tfPassword.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            //passwordun en üst noktası username alanının bottom noktasına 10 eklenerek altına yerleşir
            tfPassword.topAnchor.constraint(equalTo: tfUsername.bottomAnchor, constant: 10),
            tfPassword.leadingAnchor.constraint(equalTo: tfUsername.leadingAnchor, constant: 0),
            tfPassword.trailingAnchor.constraint(equalTo: tfUsername.trailingAnchor, constant: 0),
            tfPassword.heightAnchor.constraint(equalToConstant: 70)
        ])
        
        btnLogin.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            btnLogin.topAnchor.constraint(equalTo: tfPassword.bottomAnchor, constant: 10),
            btnLogin.leadingAnchor.constraint(equalTo: tfPassword.leadingAnchor, constant: 5),
            btnLogin.trailingAnchor.constraint(equalTo: tfPassword.trailingAnchor, constant: -5),
            btnLogin.heightAnchor.constraint(equalTo: tfPassword.heightAnchor, multiplier: 0.7)
            
        ])
    
    }


}

