//
//  profileViewController.swift
//  authorization
//
//  Created by Елена Логинова on 18.12.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet var fullNameLable: UILabel!
    @IBOutlet var ageLable: UILabel!
    @IBOutlet var zodiacSignLabel: UILabel!
    @IBOutlet var plaseLable: UILabel!
    @IBOutlet var educationLable: UILabel!
    @IBOutlet var genderLable: UILabel!
    
    @IBOutlet var hobbyButton: UIButton!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        fullNameLable.text = "\(person.name) \(person.surname)"
        ageLable.text = "age: \(person.age)"
        zodiacSignLabel.text = "zodiac sign: \(person.zodiacSign)"
        plaseLable.text = "city: \(person.city)"
        educationLable.text = "education: \(person.egucation)"
        genderLable.text = person.gender.rawValue
        
        hobbyButton.layer.cornerRadius = 10
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBar = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBar.viewControllers else { return }
        
       viewControllers.forEach { viewController in
            if let firstHobbyVC = viewController as? FirstHobbyViewController {
                firstHobbyVC.information = person.hobby[0]
            } else if let secondHobbyVC = viewController as? SecondHobbyViewController { secondHobbyVC.information = person.hobby[1]
            } else if let thirdHobbyVC = viewController as? ThirdhobbyViewController {
                thirdHobbyVC.information = person.hobby[2]
            }
        }
    }
    
}
 
