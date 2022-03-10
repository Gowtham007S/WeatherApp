//
//  LoginView.swift
//  WeatherApp
//
//  Created by S, Gowtham (G.) on 09/03/22.
//

import Foundation
import UIKit
import SnapKit

class LoginView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        setUpContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

 
    public lazy var appListContainer: UIStackView = {
        let appListContainer = UIStackView()
        appListContainer.axis = .vertical
        appListContainer.frame = CGRect(x: 50, y: 50, width: 100, height: 500)
//        appListContainer.backgroundColor = .clear
        return appListContainer
    }()
    
    public lazy var appListTitle: UITextView = {
        let appListView = UITextView()
//        appListView.backgroundColor = .cyan
        appListView.font =  UIFont.systemFont(ofSize: 15)
        appListView.textColor = .magenta
        appListView.text = "LIST OF FEATURES WE PROVIDE"
        appListView.textAlignment = .center
        return appListView
    }()
    
    public lazy var loginTableView: UITableView = {
        let tableView = UITableView()
            tableView.translatesAutoresizingMaskIntoConstraints = false
            tableView.dequeueReusableCell(withIdentifier: "LoginViewCell")
//        tableView.backgroundColor = .yellow
        return tableView
    }()
    
    private func setUpContraints() {
        self.addSubview(appListContainer)
        appListContainer.addSubview(appListTitle)
        appListContainer.addSubview(loginTableView)
        
        
        appListContainer.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-25)
            make.leading.equalToSuperview().offset(25)
            make.trailing.equalToSuperview().offset(-25)
            make.top.equalToSuperview().offset(200)
        }
        
        appListTitle.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(25)
            make.leading.equalToSuperview().offset(25)
            make.trailing.equalToSuperview().offset(-25)
            make.bottom.equalToSuperview().offset(-500)
        }

        loginTableView.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(-25)
            make.leading.equalToSuperview().offset(25)
            make.trailing.equalToSuperview().offset(-25)
            make.top.equalTo(appListTitle).offset(100)
        }
    }
}
