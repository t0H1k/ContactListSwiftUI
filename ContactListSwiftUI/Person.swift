//
//  Person.swift
//  ContactListApp
//
//  Created by Anton Boev on 18.10.2022.
//
import Foundation

struct Person: Hashable {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getContactList() -> [Person] {
        var persons: [Person] = []
        
        let names = DataStore.data.name.shuffled()
        let surnames = DataStore.data.surname.shuffled()
        let phoneNumbers = DataStore.data.phoneNumber.shuffled()
        let emails = DataStore.data.email.shuffled()
        
        let numberOfMixes = min(
            names.count,
            surnames.count,
            phoneNumbers.count,
            emails.count
        )
        
        for index in 0..<numberOfMixes {
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phoneNumber: phoneNumbers[index],
                email: emails[index]
            )
            persons.append(person)
        }
        return persons
    }
    
    static func getContact(idx: Int) -> Person {
        let person = Person(
            name: "name",
            surname: "surname",
            phoneNumber: "111",
            email: "1@1.com"
        )
        return person
    }
}

