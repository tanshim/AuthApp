//
//  ViewController.swift
//  AuthApp
//
//  Created by Sultan on 09.06.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    // MARK: - Outlets

    private lazy var backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "background")
        return imageView
    }()

    private lazy var loginLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 24)
        return label
    }()

    private lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email"
        textField.setLeftIcon(UIImage(named: "avatar")!)
        textField.setRightIcon(UIImage(named: "checked")!)
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 20
        return textField
    }()

    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.setLeftIcon(UIImage(named: "password")!)
        textField.backgroundColor = .white
        textField.layer.cornerRadius = 20
        return textField
    }()

    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = UIColor(red: 0.42, green: 0.45, blue: 0.81, alpha: 1.00)
        button.clipsToBounds = true
        button.layer.cornerRadius = 18
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        return button
    }()

    private lazy var forgotPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle("Forgot your password?", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 12)
        return button
    }()

    private lazy var orConnectWithLabel: UILabel = {
        let label = UILabel()
        label.text = "or connect with"
        label.textColor = UIColor(red: 0.48, green: 0.48, blue: 0.48, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()

    private lazy var lineViewOne: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.layer.cornerRadius = 2
        return view
    }()

    private lazy var lineViewTwo: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.layer.cornerRadius = 2
        return view
    }()

    private lazy var facebookButton: UIButton = {
        let button = UIButton()
        button.setTitle("Facebook", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setImage(UIImage(named: "fblogo"), for: .normal)
        button.configuration = .filled()
        button.configuration?.baseBackgroundColor = UIColor(red: 0.21, green: 0.65, blue: 0.94, alpha: 1.00)
        button.configuration?.imagePadding = 10
        button.clipsToBounds = true
        button.layer.cornerRadius = 18
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        return button
    }()

    private lazy var twitterButton: UIButton = {
        let button = UIButton()
        button.setTitle("Twitter", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.setImage(UIImage(named: "twitterlogo"), for: .normal)
        button.configuration = .filled()
        button.configuration?.baseBackgroundColor = UIColor(red: 0.31, green: 0.45, blue: 0.71, alpha: 1.00)
        button.configuration?.imagePadding = 10
        button.clipsToBounds = true
        button.layer.cornerRadius = 18
        button.layer.shadowColor = UIColor.black.cgColor
        button.layer.shadowOpacity = 0.3
        button.layer.shadowOffset = .zero
        button.layer.shadowRadius = 10
        button.layer.shouldRasterize = true
        button.layer.rasterizationScale = UIScreen.main.scale
        return button
    }()

    private lazy var noAccountLabel: UILabel = {
        let label = UILabel()
        label.text = "Don't have account?"
        label.textColor = UIColor(red: 0.48, green: 0.48, blue: 0.48, alpha: 1.00)
        label.font = UIFont.systemFont(ofSize: 12)
        return label
    }()

    private lazy var signUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign up", for: .normal)
        button.setTitleColor(.systemIndigo, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 12)
        return button
    }()


    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
        setupConstraints()
    }

    // MARK: - Setup

    private func setupViews() {
        view.addSubview(backgroundImageView)
        view.addSubview(loginLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
        view.addSubview(forgotPasswordButton)
        view.addSubview(orConnectWithLabel)
        view.addSubview(lineViewOne)
        view.addSubview(lineViewTwo)
        view.addSubview(facebookButton)
        view.addSubview(twitterButton)
        view.addSubview(noAccountLabel)
        view.addSubview(signUpButton)
    }

    private func setupConstraints() {

        backgroundImageView.snp.makeConstraints { make in
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
            make.height.equalTo(512)
        }

        loginLabel.snp.makeConstraints { make in
            make.top.equalTo(view.snp.top).offset(122)
            make.centerX.equalToSuperview()
        }

        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(loginLabel.snp.bottom).offset(37)
            make.centerX.equalToSuperview()
            make.width.equalTo(240)
            make.height.equalTo(40)
        }

        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(18)
            make.centerX.equalToSuperview()
            make.width.equalTo(240)
            make.height.equalTo(40)
        }

        loginButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(48)
            make.centerX.equalToSuperview()
            make.width.equalTo(240)
            make.height.equalTo(35)
        }

        forgotPasswordButton.snp.makeConstraints { make in
            make.top.equalTo(loginButton.snp.bottom).offset(24)
            make.centerX.equalToSuperview()
        }

        orConnectWithLabel.snp.makeConstraints { make in
            make.top.equalTo(forgotPasswordButton.snp.bottom).offset(183)
            make.centerX.equalToSuperview()
        }

        lineViewOne.snp.makeConstraints { make in
            make.top.equalTo(forgotPasswordButton.snp.bottom).offset(190)
            make.right.equalTo(orConnectWithLabel.snp.left).offset(-15)
            make.height.equalTo(1)
            make.width.equalTo(50)
        }

        lineViewTwo.snp.makeConstraints { make in
            make.top.equalTo(forgotPasswordButton.snp.bottom).offset(190)
            make.left.equalTo(orConnectWithLabel.snp.right).offset(15)
            make.height.equalTo(1)
            make.width.equalTo(50)
        }

        facebookButton.snp.makeConstraints { make in
            make.top.equalTo(orConnectWithLabel.snp.bottom).offset(25)
            make.left.equalToSuperview().offset(27)
            make.height.equalTo(35)
            make.width.equalTo(150)
        }

        twitterButton.snp.makeConstraints { make in
            make.top.equalTo(orConnectWithLabel.snp.bottom).offset(25)
            make.right.equalToSuperview().offset(-27)
            make.height.equalTo(35)
            make.width.equalTo(150)
        }

        noAccountLabel.snp.makeConstraints { make in
            make.top.equalTo(facebookButton.snp.bottom).offset(55)
            make.left.equalToSuperview().offset(112)
        }

        signUpButton.snp.makeConstraints { make in
            make.top.equalTo(facebookButton.snp.bottom).offset(55)
            make.left.equalTo(noAccountLabel.snp.right).offset(12)
            make.height.equalTo(14)
        }
    }

}

extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 25, y: 6, width: 15, height: 15))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 30, y: 0, width: 55, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }

    func setRightIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 0, y: 8, width: 15, height: 15))
        iconView.image = image
        let iconContainerView: UIView = UIView(frame: CGRect(x: 50, y: 0, width: 30, height: 30))
        iconContainerView.addSubview(iconView)
        rightView = iconContainerView
        rightViewMode = .always
    }
}




