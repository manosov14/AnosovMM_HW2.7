//
//  dataManageViewController.swift
//  AnosovMM_HW2.7
//
//  Created by Михаил on 27.07.2021.
//

class DataManager {
    static let shared = DataManager()
    
    init() {}
    
    var names: [String]  = [
        "Mike",
        "Steve",
        "Frank",
        "John"
    ]
    
    var surnames = [
        "Jamenson",
        "Gibson",
        "Maiden",
        "noname"
    ]
    
    var phones = [
        "+7 111 111 11 11",
        "+7 222 222 22 22",
        "+7 333 333 33 33",
        "+7 444 444 44 44"
    ]
    
    var emails = [
        "a@a.ru",
        "b@b.ru",
        "c@C.ru",
        "d@d.ru"
    ]
}


