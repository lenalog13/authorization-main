//
//  FirstHobbyViewController.swift
//  authorization
//
//  Created by Елена Логинова on 13.01.2023.
//

import UIKit

final class FirstHobbyViewController: UIViewController {
    
    @IBOutlet var hobbyLable: UILabel!
    @IBOutlet var descriptionHobbyLable: UILabel!
    
    var information: (String, String)!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        (hobbyLable.text, descriptionHobbyLable.text) = information
    }
}
