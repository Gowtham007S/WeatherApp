//
//  LoginView.swift
//  WeatherApp
//
//  Created by S, Gowtham (G.) on 09/03/22.
//

import Foundation
import UIKit
import SnapKit

class LoginViewController1: UIViewController {
    
    init() {
        super.init(nibName: nil, bundle: nil)
        setUpContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        setUpContraints()
    }
 
    let loginTableView: UITableView = {
        let tableView = UITableView()
               return tableView
    }()
    
    private func setUpContraints() {
        self.view.addSubview(loginTableView)
        loginTableView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(50)
            make.bottom.equalToSuperview().offset(50)
            make.leading.equalToSuperview().offset(50)
            make.trailing.equalToSuperview().offset(50)
        }
    }
}
