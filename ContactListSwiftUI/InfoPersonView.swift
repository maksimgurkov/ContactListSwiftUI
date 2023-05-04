//
//  InfoPersonView.swift
//  ContactListSwiftUI
//
//  Created by Максим Гурков on 04.05.2023.
//

import SwiftUI

struct InfoPersonView: View {
    
    let person: Person
    
    var body: some View {
        VStack {
            List {
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 280, height: 250)
                    .padding()
                Text(person.phone)
                Text(person.email)
            }
            .navigationTitle(person.fulMame)
        }
    }
}

struct InfoPersonView_Previews: PreviewProvider {
    static var previews: some View {
        InfoPersonView(person: Person.dataPerson().first!)
    }
}
