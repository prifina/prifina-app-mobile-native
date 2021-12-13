//
//  ListContactsViewController.swift
//  Prifina
//
//  Created by DW on 12/11/21.
//

import UIKit

class ListContactsViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var contactTableView: UITableView!
    
    // MARK: - Properties
    private let viewModel = ListContactViewModel()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        contactTableView.dataSource = self
        viewModel.fetchContacts { [weak self] isReloadNeeded in
            guard let self = self else { return }
            if isReloadNeeded {
                self.contactTableView.reloadData()
            }
        }
    }
    
    // MARK: - Private Methods
    
    // MARK: - Action Methods
}

// MARK: - Extension
extension ListContactsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.contactArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ListContactTableViewCell = tableView.dequeueReusableCell(for: indexPath)
        cell.contactDetails = viewModel.contactArr[indexPath.row]
        return cell
    }
}
