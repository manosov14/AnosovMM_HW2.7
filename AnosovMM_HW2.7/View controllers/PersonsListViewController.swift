//
//  FirstTableViewController.swift
//  AnosovMM_HW2.7
//
//  Created by Михаил on 28.07.2021.
//

import UIKit

class PersonsListViewController: UITableViewController {
    var persons: [Person] = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Person.getPersons().count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        let person = Person.getPersons()[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = ("\(person.names) \(person.surnames)")
        cell.contentConfiguration = content
        
        return cell
    }
    
     // MARK: - Navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailPersonVC = segue.destination as? detailPersonInfoViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let persone = persons[indexPath.row]
        detailPersonVC.persone = persone
     }
}
