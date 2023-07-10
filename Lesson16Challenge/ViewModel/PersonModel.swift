//
//  PersonView.swift
//  Lesson16Challenge
//
//  Created by Chuck Belcher on 7/10/23.
//

import Foundation

class PersonModel: ObservableObject {
    
    @Published var people = [Person]()
    
    init() {
        
        //Get Path to JSON file.
        let filePath = Bundle.main.path(forResource: "quotes", ofType: "json")
        if let path = filePath {
            
            //Create URL to the json file path
            let url = URL(fileURLWithPath: path)
            
            //Create a data object from the url
            do {
                let data = try Data(contentsOf: url)
                
                //Create decoder to parse the data object
                let decoder = JSONDecoder()
                
                //Parse the JSON data
                do {
                    let peopleData = try decoder.decode([Person].self, from: data)
                    
                    //Add Uniq ID to each person
                    for person in peopleData {
                        person.id = UUID()
                    }
                    
                    //Assign peopleData to publised property
                    self.people = peopleData
                    
                } catch {
                    print(error)
                }
            } catch {
                print(error)
            }
        }
        
    }
}
