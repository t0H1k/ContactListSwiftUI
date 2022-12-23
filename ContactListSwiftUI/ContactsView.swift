//
//  ContactsView.swift
//  ContactListSwiftUI
//
//  Created by Anton Boev on 23.12.2022.
//

import SwiftUI

struct ContactsView: View {
    let persons: [Person]
    
    var body: some View {
        List(persons, id: \.name) { person in
            NavigationLink( destination: ContactDetailsView(person: person)) {
                Text("\(person.fullName)")
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}


struct ContactList_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(persons: Person.getContactList())
    }
}
