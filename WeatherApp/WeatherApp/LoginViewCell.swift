//
//  LoginViewCell.swift
//  WeatherApp
//
//  Created by S, Gowtham (G.) on 10/03/22.
//

import Foundation
import UIKit
import SnapKit

class LoginViewCell: UITableViewCell {
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupTableViewCell()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
 
    var textView: UITextView = {
        let textView = UITextView()
        textView.backgroundColor = .blue
        textView.frame = CGRect(x:50,y:50,width:40.0,height:50)
        textView.textAlignment = .center
        return textView
    }()

    private func setupTableViewCell() {
    self.addSubview(textView)
        textView.snp.makeConstraints{ make in
            make.bottom.equalToSuperview()
            make.top.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
    
    }
}
