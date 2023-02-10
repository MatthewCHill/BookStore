//
//  BookController.swift
//  BookStore
//
//  Created by Matthew Hill on 2/9/23.
//

import Foundation

class BookController{
    
    // MARK: - Singleton
    static let sharedInstance = BookController()
    // MARK: - SSOT
    var books: [Book] = []
    
    // MARK: - CRUD FUNCTIONS
    
    func createBook(title: String, author: String, rating: Double, synopsis: String) {
        let newBook = Book(title: title, author: author, rating: rating, synopsis: synopsis)
        books.append(newBook)
    }
    
    func updateBook(bookToUpdate: Book, newTitle: String, newAuthor: String, newRating: Double, newSynopsis: String) {
        bookToUpdate.title = newTitle
        bookToUpdate.author = newAuthor
        bookToUpdate.rating = newRating
        bookToUpdate.synopsis = newSynopsis
        
    }
    func deleteBook(bookToDelete: Book) {
        guard let index = books.firstIndex(of: bookToDelete) else {return}
        books.remove(at: index)
        
    }
    
    
    
    
    
    
    
}
