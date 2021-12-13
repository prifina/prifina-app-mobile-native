//
//  SyncContactViewController.swift
//  Prifina
//
//  Created by DW on 12/11/21.
//

import UIKit

class SyncContactViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var titleLabel: PrifinaLabel!
    @IBOutlet weak var descriptionLabel: PrifinaLabel!
    @IBOutlet var infoLabel: [PrifinaLabel]!
    @IBOutlet weak var anyChangesLabel: PrifinaLabel!
    @IBOutlet weak var syncAllLabel: PrifinaLabel!
    @IBOutlet weak var syncContactSwitch: UISwitch!
    @IBOutlet weak var showContactButton: PrifinaButton!

    // MARK: - Properties
    private let prifinaContact = PrifinaContact()
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareUI()
    }
    
    // MARK: - Private Methods
    private func prepareUI() {
        titleLabel.prepareLabelWith(.label3)
        [descriptionLabel, anyChangesLabel].forEach({ $0.prepareLabelWith(.label2)})
        infoLabel.forEach({ $0.prepareLabelWith(.label5)})
        syncAllLabel.prepareLabelWith(.label6)
        showContactButton.prepareButtonWith(.button1)
        checkContactPermission()
    }
    
    private func checkContactPermission() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            self.syncContactSwitch.isOn = self.prifinaContact.contactAuthorizationStatus == .authorized
            self.showContactButton.isHidden = !(self.prifinaContact.contactAuthorizationStatus == .authorized)
        }
    }
    
    // MARK: - Action Methods
    @IBAction func syncContactSwitchAction(_ sender: UISwitch) {
        if sender.isOn && prifinaContact.contactAuthorizationStatus != .authorized {
            prifinaContact.contactsRequestPermission { [weak self] isAuthorized in
                guard let self = self else { return }
                self.checkContactPermission()
                if !isAuthorized {
                    UIApplication.shared.open(URL(string: UIApplication.openSettingsURLString)!, options: [:], completionHandler: nil)
                }
            }
        }
    }
    
    @IBAction func showContactButtonAction(_ sender: PrifinaButton) {
        let listContactVC = ListContactsViewController.instantiateFromStoryboard(.home)
        navigationController?.pushViewController(listContactVC, animated: true)
    }
}
