//
//  HomeViewController.swift
//  Prifina
//
//  Created by DW on 11/11/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet var titleLabelArr: [PrifinaLabel]!
    @IBOutlet var descriptionLabelArr: [PrifinaLabel]!
    @IBOutlet var featureButton: [PrifinaButton]!

    // MARK: - Properties
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
        startSyncServices()
    }
    
    // MARK: - Private Methods
    private func prepareUI() {
        for index in 0..<titleLabelArr.count {
            titleLabelArr[index].prepareLabelWith(.label4)
            descriptionLabelArr[index].prepareLabelWith(.label5)
            featureButton[index].prepareButtonWith(.button1)
        }
    }
    
    private func startSyncServices() {
        if LoggedInUser.shared.isContactSyncEnabled {
            PrifinaContact.shared.startSyncing()
        }
    }
    
    
    // MARK: - Action Methods
    @IBAction func syncContactButtonAction(_ sender: PrifinaButton) {
        let syncContactVC = SyncContactViewController.instantiateFromStoryboard(.home)
        navigationController?.pushViewController(syncContactVC, animated: true)
    }
}
