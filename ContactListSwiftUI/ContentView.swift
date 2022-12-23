//
//  ContentView.swift
//  ContactListSwiftUI
//
//  Created by Anton Boev on 23.12.2022.
//

import SwiftUI

struct ContentView: View {
    let persons = Person.getContactList()
    
    var body: some View {
        NavigationView {
            TabView {
                ContactsView(persons: persons)
                    .tabItem {
                        Image(systemName: "book")
                        Text("Contacts")
                    }
                NumbersView(persons: persons)
                    .tabItem {
                        Image(systemName: "phone")
                        Text("Numbers")
                    }
            }
            .navigationBarTitle("Contact List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
