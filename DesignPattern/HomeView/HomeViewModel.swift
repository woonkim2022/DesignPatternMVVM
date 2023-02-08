//
//  HomeViewModel.swift
//  DesignPattern
//
//  Created by woonKim on 2023/02/08.
//

import Foundation

final class HomeViewModel {
    
    var welcomeMessage: ObservableObject<String?> = ObservableObject(nil)
    
    func getLoggedInUser() {
        let user = NetworkService.shared.getLoggedInUser()
        self.welcomeMessage.value = "Hello, \(user.firstName) \(user.lastName)"
    }
    
}
