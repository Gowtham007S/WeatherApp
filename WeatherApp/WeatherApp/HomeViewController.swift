//
//  ViewController.swift
//  WeatherApp
//
//  Created by S, Gowtham (G.) on 09/03/22.
//

import UIKit

class HomeViewController: UIViewController {
   
    
    let loginView = LoginView()
    let viewModel: [String] = ["Login"]
    var router: UINavigationController
    let itemsInLoginScreen = ["Weather App", "NSE DATA", "Current Location", "Trending News","CricBuzz Live", "FootBall Live"]
    init(navigationController: UINavigationController) {
        self.router = navigationController
        super.init(nibName: nil, bundle: nil)
//        setUpTableView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view = loginView
        self.loginView.loginTableView.register(UITableViewCell.self, forCellReuseIdentifier: "LoginViewCell")
        self.loginView.loginTableView.delegate = self
        self.loginView.loginTableView.dataSource = self
    }
    
    func viewWillAppear() {
    }
}

extension HomeViewController {
    private func handleUserTap(selectedEvent: Int) {
        switch selectedEvent {
        case 0:
            print("WeatherApp")
        case 1:
            print("NSEDATA")
        default:
            print("Out of Scope")
        }
    }
}


extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsInLoginScreen.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print("Gowtham", tableView)
        tableView.register(LoginViewCell.self, forCellReuseIdentifier: "DefaultCell")
        tableView.rowHeight = 75
        let cell: UITableViewCell = {
            let cell = tableView.dequeueReusableCell(withIdentifier: "DefaultCell", for: indexPath) as! LoginViewCell
            cell.textView.backgroundColor = .systemBlue
            cell.textView.text = itemsInLoginScreen[indexPath.row]
            return cell
        }()
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.handleUserTap(selectedEvent: indexPath.row)
    }
}

