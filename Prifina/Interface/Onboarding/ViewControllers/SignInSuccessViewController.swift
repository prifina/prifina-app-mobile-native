//
//  SignInSuccessViewController.swift
//  Prifina
//
//  Created by DW on 11/11/21.
//

import UIKit

class SignInSuccessViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var titleLabel: PrifinaLabel!
    @IBOutlet weak var exploreButton: PrifinaButton!
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
    }
    
    // MARK: - Private Methods
    private func prepareUI() {
        titleLabel.prepareLabelWith(.label3)
        exploreButton.prepareButtonWith(.button1)
    }
    
    // MARK: - Action Methods
    @IBAction func exploreButtonAction(_ sender: PrifinaButton) {
        let homeVC = HomeViewController.instantiateFromStoryboard(.home)
        navigationController?.pushViewController(homeVC, animated: true)
    }
}
