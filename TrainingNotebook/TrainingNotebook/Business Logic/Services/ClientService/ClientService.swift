//
//  ClientService.swift
//  Training Notebook
//
//  Created by m.nikulin on 19/11/2017.
//  Copyright © 2017 atom-wintermute. All rights reserved.
//

import Foundation

protocol ClientService {
    
    func obtainClientList() -> [Client]
}
