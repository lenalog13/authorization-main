//
//  ThirdHobbyViewController.swift
//  authorization
//
//  Created by Елена Логинова on 13.01.2023.
//

import UIKit

final class ThirdhobbyViewController: UIViewController {
    
    @IBOutlet var hobbyLable: UILabel!
    @IBOutlet var discriptionHobbyLable: UILabel!
    
    var information: (String, String)!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        (hobbyLable.text, discriptionHobbyLable.text) = information
    }
    
    
}
