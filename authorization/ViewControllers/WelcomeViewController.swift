//
//  profileViewController.swift
//  authorization
//
//  Created by Елена Логинова on 18.12.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var welcomeLable: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLable.text = "Welcome, \(person.name) \(person.surname)!"
    }
    
}
 
