//
//  ClientCell.swift
//  Training Notebook
//
//  Created by m.nikulin on 19/11/2017.
//  Copyright © 2017 atom-wintermute. All rights reserved.
//

import UIKit

final class ClientCell: UITableViewCell {
    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet var userNameLabel: UILabel!
    
    func updateWithUser(client: Client) -> Void {
        userNameLabel.text = client.name
        if let photo = client.photoImage {
            photoImageView.image = UIImage(named: photo)
        } else {
            photoImageView.image = UIImage(named: "photo_placeholder")
        }
    }
}
