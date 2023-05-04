//
//  PersonsListView.swift
//  ContactListSwiftUI
//
//  Created by Максим Гурков on 04.05.2023.
//

import SwiftUI

struct PersonsListView: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationView {
            List(persons) { person in
                NavigationLink(person.fulName) {
                    InfoPersonView(person: person)
                }
            }
            .listStyle(.inset)
            .navigationTitle("Контакты")
        }
    }
}

struct PersonsListView_Previews: PreviewProvider {
    static var previews: some View {
        PersonsListView(persons: Person.dataPerson())
    }
}
