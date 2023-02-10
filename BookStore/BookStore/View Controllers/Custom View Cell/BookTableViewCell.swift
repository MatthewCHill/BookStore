//
//  BookTableViewCell.swift
//  BookStore
//
//  Created by Matthew Hill on 2/9/23.
//

import UIKit


class BookTableViewCell: UITableViewCell {
    // MARK: - Outlets
    
    @IBOutlet weak var bookTitleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    
    func updateView(book: Book) {
        bookTitleLabel.text = book.title
        authorLabel.text = book.author
        ratingLabel.text = "\(book.rating)"
    }
    


}
