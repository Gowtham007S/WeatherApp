//
//  LoginViewCell.swift
//  WeatherApp
//
//  Created by S, Gowtham (G.) on 10/03/22.
//

import Foundation
import UIKit

class LoginViewCell: UITableViewCell {
    
    override initWithStyle(
 
    var imageView: UIImageView = {
        let image = UIImageView()
        image.init(frame: CGRect(x: 50, y: 50, width: 50, height: 50))
        return image
    }
    var cell: UITableViewCell = {
        let cell = UITableViewCell()
        cell.backgroundColor = .red
        return cell
    }()

}
