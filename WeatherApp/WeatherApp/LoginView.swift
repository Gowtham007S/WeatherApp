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
        self.backgroundColor = .orange
        setUpContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

 
    public lazy var loginTableView: UITableView = {
        let tableView = UITableView()
            tableView.translatesAutoresizingMaskIntoConstraints = false
            tableView.dequeueReusableCell(withIdentifier: "LoginViewCell")
        return tableView
    }()
    
    private func setUpContraints() {
        self.addSubview(loginTableView)
        loginTableView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(25)
            make.bottom.equalToSuperview().offset(-25)
            make.leading.equalToSuperview().offset(25)
            make.trailing.equalToSuperview().offset(-25)
        }
    }
}
