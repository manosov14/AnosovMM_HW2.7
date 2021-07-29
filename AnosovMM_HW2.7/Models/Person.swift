//
//  Person.swift
//  AnosovMM_HW2.7
//
//  Created by Михаил on 27.07.2021.
//
struct Person {
    let names: String
    let surnames: String
    let phones: String
    let emails: String
}

extension Person {
    static func getPersons() -> [Person] {
        let namesRandom = DataManager.shared.names.shuffled()
        let surnamesRandom = DataManager.shared.surnames.shuffled()
        let phonesRandom = DataManager.shared.phones.shuffled()
        let emailsRandom = DataManager.shared.emails.shuffled()
        var persons: [Person] = []
        
        for index in 0..<namesRandom.count {
            persons.append (
                Person(
                    names: namesRandom[index],
                    surnames: surnamesRandom[index],
                    phones: phonesRandom[index],
                    emails: emailsRandom[index]))
        }
        return persons
    }
}
