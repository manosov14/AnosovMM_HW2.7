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
    
    static func getPersons() -> [Person] {
        
        let namesRandom = DataManager.shared.names.shuffled()
        let surnamesRandom = DataManager.shared.surnames.shuffled()
        let phonesRandom = DataManager.shared.phones.shuffled()
        let emailsRandom = DataManager.shared.emails.shuffled()
        
        var persons: [Person] = []
        
        for _ in 0..<namesRandom.count {
            for name in namesRandom {
                for surname in surnamesRandom {
                    for phone in phonesRandom {
                        for email in emailsRandom {
                            persons.append (Person(names: name, surnames: surname, phones: phone, emails: email))
                        }
                    }
                }
            }
        }
        return persons
    }
}
