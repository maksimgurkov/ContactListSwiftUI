//
//  PersonDetailedInformationView.swift
//  ContactListSwiftUI
//
//  Created by Максим Гурков on 04.05.2023.
//

import SwiftUI

struct PersonDetailedInformationView: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                Section(header: Text(person.fulName), content: {
                    Text(person.phone)
                    Text(person.email)
                })
            }
            .navigationTitle("Номера")
        }
    }
}

struct PersonDetailedInformationView_Previews: PreviewProvider {
    static var previews: some View {
        PersonDetailedInformationView(persons: Person.dataPerson())
    }
}
