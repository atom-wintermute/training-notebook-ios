//
//  Client.swift
//  Training Notebook
//
//  Created by m.nikulin on 19/11/2017.
//  Copyright © 2017 atom-wintermute. All rights reserved.
//

import Foundation

final class Client {
    let name: String
    let photoImage: String?
    
    init(name: String, photoImage: String?) {
        self.name = name
        self.photoImage = photoImage
    }
}
