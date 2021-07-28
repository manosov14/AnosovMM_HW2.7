//
//  FirstViewController.swift
//  AnosovMM_HW2.7
//
//  Created by Михаил on 27.07.2021.
//

import UIKit

class firstViewController: UITabBarController {
    
    var persons = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        for viewController in tabBarVC.viewControllers! {
            if let PersonListVC = viewController as? PersonsListViewController{
                PersonListVC.persons = persons
            }
        }  
    }
}
