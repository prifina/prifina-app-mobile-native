//
//  SyncContactSuccessViewController.swift
//  Prifina
//
//  Created by DW on 12/11/21.
//

import UIKit

class SyncContactSuccessViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var titleLabel: PrifinaLabel!
    // MARK: - Properties
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
    }
    
    // MARK: - Private Methods
    private func prepareUI() {
        titleLabel.prepareLabelWith(.label7)
    }
    // MARK: - Action Methods
}
