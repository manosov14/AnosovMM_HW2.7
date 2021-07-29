//
//  detailPersonViewController.swift
//  AnosovMM_HW2.7
//
//  Created by Михаил on 29.07.2021.
//

import UIKit

class personsListDetailViewController: UITableViewController {

    var persons: [Person] = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailList", for: indexPath)
        
        let person = Person.getPersons()[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = ("\(person.phones)")
        
        return cell
    }
}

