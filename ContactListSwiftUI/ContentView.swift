//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Максим Гурков on 04.05.2023.
//

import SwiftUI

struct ContentView: View {
    
    let persons = Person.dataPerson()
    
    var body: some View {
        TabView {
            PersonsListView(persons: persons)
                .tabItem {
                    Image(systemName: "person.3.sequence.fill")
                    Text("Контакты")
                }
            PersonDetailedInformationView(persons: persons)
                .tabItem {
                    Image(systemName: "phone.and.waveform.fill")
                    Text("Номера")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
