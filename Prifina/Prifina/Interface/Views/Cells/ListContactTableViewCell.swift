//
//  ListContactTableViewCell.swift
//  Prifina
//
//  Created by DW on 12/11/21.
//

import UIKit

class ListContactTableViewCell: UITableViewCell {

    // MARK: - IBOutlets
    @IBOutlet weak var contactPhotoImageView: UIImageView!
    @IBOutlet weak var nameLabel: PrifinaLabel!

    // MARK: - Properties
    var contactDetails: ServerContactDetails.DocumentInStage! {
        didSet {
            configureCell()
        }
    }
    
    // MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        prepareUI()
    }

    // MARK: - Private Methods
    private func prepareUI() {
        nameLabel.prepareLabelWith(.label2)
        contactPhotoImageView.layer.cornerRadius = contactPhotoImageView.bounds.width / 2
        contactPhotoImageView.layer.masksToBounds = true
    }
    
    private func configureCell() {
        contactPhotoImageView.image = UIImage(named: "personCircle")
        nameLabel.text = (contactDetails.name ?? "") + "\n" + (contactDetails.mobile ?? "")
    }
}
