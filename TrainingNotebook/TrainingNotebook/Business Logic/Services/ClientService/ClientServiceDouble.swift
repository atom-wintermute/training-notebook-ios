//
//  ClientServiceDouble.swift
//  Training Notebook
//
//  Created by m.nikulin on 19/11/2017.
//  Copyright © 2017 atom-wintermute. All rights reserved.
//

import Foundation

final class ClientServiceDouble: ClientService {
    
    // MARK: - ClientService
    
    func obtainClientList() -> [Client] {
        let client1 = Client(name: "Test1", photoImage: nil)
        let client2 = Client(name: "Test2", photoImage: nil)
        let client3 = Client(name: "Test3", photoImage: nil)
        
        return [client1, client2, client3]
    }
}
