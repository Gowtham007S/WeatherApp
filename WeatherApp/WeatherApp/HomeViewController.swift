//
//  ViewController.swift
//  WeatherApp
//
//  Created by S, Gowtham (G.) on 09/03/22.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1000
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = {
            let cell = tableView.dequeueReusableCell(withIdentifier: "LoginViewCell", for: indexPath) as! CustomTableViewCell
//            let cell = LoginViewCell()
            cell.backgroundColor = .red
            return cell
        }()
        cell.textLabel?.text = "Gowtham"
        return cell
    }
    
    let loginView = LoginView()
    let viewModel: [String] = ["Login"]
    var router: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.router = navigationController
        super.init(nibName: nil, bundle: nil)
        setUpTableView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view = loginView
        self.loginView.loginTableView.register(UITableViewCell.self, forCellReuseIdentifier: "LoginViewCell")
        self.loginView.loginTableView.delegate = self
        self.loginView.loginTableView.dataSource = self
    }
    
     func viewWillAppear() {
//        router.pushViewController(loginView, animated: true)
        super.viewWillAppear(true)
//         self.view = loginView
//        setUpTableView()
    }
    
    private func setUpTableView() {
//        router.pushViewController(loginView, animated: true)
    }
}

