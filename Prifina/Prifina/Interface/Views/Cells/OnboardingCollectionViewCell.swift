//
//  OnboardingCollectionViewCell.swift
//  Prifina
//
//  Created by DW on 10/11/21.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBOutlets
    @IBOutlet weak var featureImageView: UIImageView!
    @IBOutlet weak var titleLabel: PrifinaLabel!
    @IBOutlet weak var descriptionLabel: PrifinaLabel!
    
    // MARK: - Properties
    var featureDetails: FeatureDetails? {
        didSet {
            guard self.featureDetails != nil else {
                debugPrint("No Details found")
                return
            }
            configureCell()
        }
    }
    
    // MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        self.prepareUI()
    }
    
    override func prepareForReuse() {
        featureImageView.image = nil
        titleLabel.text = nil
        descriptionLabel.text = nil
    }
    
    // MARK: - Private Methods
    private func prepareUI() {
        self.titleLabel.prepareLabelWith(.label1)
        self.descriptionLabel.prepareLabelWith(.label2)
    }
    
    private func configureCell() {
        featureImageView.image = featureDetails?.image
        titleLabel.text = featureDetails?.title
        descriptionLabel.text = featureDetails?.description
    }
}
