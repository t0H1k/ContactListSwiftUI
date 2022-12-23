//
//  NumbersView.swift
//  ContactListSwiftUI
//
//  Created by Anton Boev on 23.12.2022.
//

import SwiftUI

struct NumbersView: View {
    let persons: [Person]
    
    var body: some View {
        List {
            ForEach(persons, id: \.name) { person in
                Section(header: Text(person.fullName)) {
                    HStack {
                        Image(systemName: "phone")
                            .foregroundColor(.blue)
                        Text("\(person.phoneNumber)")
                    }
                    HStack {
                        Image(systemName: "tray")
                            .foregroundColor(.blue)
                        Text("\(person.email)")
                    }
                }
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

struct Numbers_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(persons: Person.getContactList())
    }
}
