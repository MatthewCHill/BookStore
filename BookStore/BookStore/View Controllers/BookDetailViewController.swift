//
//  BookDetailViewController.swift
//  BookStore
//
//  Created by Matthew Hill on 2/9/23.
//

import UIKit

class BookDetailViewController: UIViewController {
// MARK: - Outlets
    @IBOutlet weak var bookTitleTextField: UITextField!
    @IBOutlet weak var bookAuthorTextField: UITextField!
    @IBOutlet weak var bookRatingTextField: UITextField!
    @IBOutlet weak var bookSynopsisTextView: UITextView!
    @IBOutlet weak var clearButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()

    }
    
    var book: Book?
    
    // MARK: - Actions
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let author = bookAuthorTextField.text,
              let title = bookTitleTextField.text,
              let rating = bookRatingTextField.text,
              let synopsis = bookSynopsisTextView.text else {return}
        
        if let book = book {
            BookController.sharedInstance.updateBook(bookToUpdate: book, newTitle: title, newAuthor: author, newRating: Double(rating) ?? 0.0, newSynopsis: synopsis)
        } else {
            BookController.sharedInstance.createBook(title: title, author: author, rating: Double(rating) ?? 0.0, synopsis: synopsis)
        }
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func clearButtonTapped(_ sender: Any) {
        resetView()
    }
    
    // MARK: - Helper Functions
    
    func updateView() {
        guard let book = book else {return}
        bookTitleTextField.text = book.title
        bookAuthorTextField.text = book.author
        bookRatingTextField.text = "\(book.rating)"
        bookSynopsisTextView.text = book.synopsis
    }
    
    func resetView() {
        bookRatingTextField.text = ""
        bookSynopsisTextView.text = ""
        bookTitleTextField.text = ""
        bookAuthorTextField.text = ""
    }
    

}
