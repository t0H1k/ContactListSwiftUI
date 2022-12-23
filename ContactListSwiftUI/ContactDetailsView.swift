//
//  ContactDetailsView.swift
//  ContactListSwiftUI
//
//  Created by Anton Boev on 23.12.2022.
//

import SwiftUI

struct ContactDetailsView: View {
    
    let person: Person
    
    var body: some View {
       
        List {
            Image(systemName: "person")
                .resizable()
                .frame(width: 150, height: 150)
                .padding(.leading, 80)
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
        .navigationBarTitle("\(person.fullName)")
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(person: Person.getContact(idx: 0))
    }
}
