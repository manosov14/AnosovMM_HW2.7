//
//  FirstDetailViewController.swift
//  AnosovMM_HW2.7
//
//  Created by Михаил on 28.07.2021.
//

import UIKit

class detailPersonInfoViewController: UIViewController {

    @IBOutlet weak var phoneLabelOU: UILabel!
    @IBOutlet weak var emailLabelOU: UILabel!
    
    var persone: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneLabelOU.text = persone.phones
        emailLabelOU.text = persone.emails
    }
}
