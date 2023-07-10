//
//  Person.swift
//  Lesson16Challenge
//
//  Created by Chuck Belcher on 7/9/23.
//

import Foundation

class Person: Identifiable, Decodable {
    var id: UUID?
    var name: String
    var image: String
    var quotes: [String]
}
