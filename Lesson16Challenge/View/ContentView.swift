//
//  ContentView.swift
//  Lesson16Challenge
//
//  Created by Chuck Belcher on 7/9/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var personModel = PersonModel()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                //Add ForEach here
                ForEach (personModel.people) { person in
                    NavigationLink {
                        PersonDetailView(person: person)
                    } label: {
                        PersonCardView(person: person)
                    }
                }
                

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
