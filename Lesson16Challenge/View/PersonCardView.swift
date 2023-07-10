//
//  PersonCardView.swift
//  Lesson16Challenge
//
//  Created by Chuck Belcher on 7/10/23.
//

import SwiftUI

struct PersonCardView: View {
    var person: Person
    var body: some View {
        ZStack {
            Image(person.image)
                .resizable()
                .scaledToFill()

                VStack (alignment: .leading) {
                    Text(person.quotes[0])
                        .font(.title)
                        .bold()
                        .padding(.horizontal)
                        
                    Text(" - " + person.name)
                        .font(.title3)
                        .bold()
                        .padding(.top)
                        .padding(.leading)

                }
                
                .foregroundColor(.white)

        }
        .frame(width: .none, height: 400, alignment: .leading)
        .clipped()
        .cornerRadius(20)
        .padding(.horizontal, 10)

        
    }
}

struct PersonCardView_Previews: PreviewProvider {
    static var previews: some View {
        let personData = PersonModel()
        PersonCardView(person: personData.people[0])
    }
}
