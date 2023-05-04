//
//  Person.swift
//  ContactListSwiftUI
//
//  Created by Максим Гурков on 04.05.2023.
//

import Foundation

struct Person: Identifiable {
    
    let id = UUID()
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fulName: String {
        "\(name) \(surname)"
    }
    
    static func dataPerson() -> [Person] {
        
        var persons: [Person] = []
        
        let names = DateStorage.shared.names.shuffled()
        let surnames = DateStorage.shared.surNames.shuffled()
        let phones = DateStorage.shared.phones.shuffled()
        let emails = DateStorage.shared.emails.shuffled()
        
        for index in  0..<names.count {
            
            let person = Person(
                name: names[index],
                surname: surnames[index],
                phone: phones[index],
                email: emails[index]
            )
            persons.append(person)
        }
        
        return persons
    }
    
}
