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
    let refreshControl = UIRefreshControl()

    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        contactTableView.dataSource = self
        prepareUI()
        getAndReloadContacts()
    }
    
    // MARK: - Private Methods
    private func prepareUI() {
        refreshControl.attributedTitle = NSAttributedString(string: "Pull to refresh.")
        refreshControl.addTarget(self, action: #selector(self.refresh(_:)), for: .valueChanged)
        contactTableView.addSubview(refreshControl)
    }
    
    private func getAndReloadContacts() {
        viewModel.fetchContactsQL { [weak self] isReloadNeeded in
            guard let self = self else { return }
            if isReloadNeeded {
                self.contactTableView.reloadData()
                self.refreshControl.endRefreshing()
            }
        }
    }
    
    // MARK: - Action Methods
    @objc func refresh(_ sender: AnyObject) {
       debugPrint("Refresh contacts")
        getAndReloadContacts()
    }
    
}

// MARK: - Extension
extension ListContactsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.contactArr?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ListContactTableViewCell = tableView.dequeueReusableCell(for: indexPath)
        
        cell.contactDetails = viewModel.contactArr?[indexPath.row].documentInStages.first
        return cell
    }
}
