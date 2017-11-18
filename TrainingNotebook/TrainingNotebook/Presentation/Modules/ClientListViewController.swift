//
//  ClientListViewController.swift
//  Training Notebook
//
//  Created by m.nikulin on 18/11/2017.
//  Copyright © 2017 atom-wintermute. All rights reserved.
//

import UIKit

final class ClientListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView?
    
    var clientService: ClientService?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.clientService = ClientServiceDouble()
        
        let nib = UINib(nibName: "ClientCell", bundle: nil)
        self.tableView?.register(nib, forCellReuseIdentifier: "ClientCell")
        self.tableView?.reloadData()
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ClientCell = tableView.dequeueReusableCell(withIdentifier: "ClientCell") as! ClientCell
        if let clientService = self.clientService {
            let clients = clientService.obtainClientList()
            cell.updateWithUser(client: clients[indexPath.row])
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let clientService = self.clientService {
            return clientService.obtainClientList().count
        }
        return 0;
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 136.0
    }
}
