//
//  Book.swift
//  BookStore
//
//  Created by Matthew Hill on 2/9/23.
//

import Foundation

class Book{
    var title: String
    var author: String
    var rating: Double
    var lastUpdated: Date
    var synopsis: String
    
    init(title: String, author: String, rating: Double, lastUpdated: Date = Date(), synopsis: String) {
        self.title = title
        self.author = author
        self.rating = rating
        self.lastUpdated = lastUpdated
        self.synopsis = synopsis
    }
}
