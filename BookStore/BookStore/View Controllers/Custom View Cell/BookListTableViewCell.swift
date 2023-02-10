//
//  TableViewCell.swift
//  BookStore
//
//  Created by Matthew Hill on 2/9/23.
//

import UIKit

class BookListTableViewCell: UITableViewCell {

    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var bookRatingLabel: UILabel!
    @IBOutlet weak var bookAuthorLabel: UILabel!
    
    func updateViews(bookDisplayed: Book) {
        bookTitleLabel.text = bookDisplayed.title
        bookRatingLabel.text = "\(bookDisplayed.rating)"
        bookAuthorLabel.text = bookDisplayed.author
    }
}
