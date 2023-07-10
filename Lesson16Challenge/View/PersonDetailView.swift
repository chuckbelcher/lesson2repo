//
//  PersonDetailView.swift
//  Lesson16Challenge
//
//  Created by Chuck Belcher on 7/10/23.
//

import SwiftUI

struct PersonDetailView: View {
    var person: Person
    
    var body: some View {
        VStack (alignment: .leading) {
            Text(person.name)
                .font(.largeTitle)
                .padding(.vertical)
                .padding(.horizontal, 10)
            Image(person.image)
                .resizable()
                .frame(height: 200)
            Text("Quotes :")
                .font(.title)
                .padding(.horizontal, 10)
                .padding(.vertical)
            ForEach (person.quotes, id: \.self) { quote in
                Text(" - " + quote)
                    .font(.title3)
                    .padding(.horizontal)
                    .padding(.bottom,5)
            }
            
            Spacer()
        }
    }
}

struct PersonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let personData = PersonModel()
        PersonDetailView(person: personData.people[2])
    }
}
