//
//  hackathonApp.swift
//  hackathon
//
//  Created by CEDAM19 on 24/04/23.
//

import SwiftUI
import Firebase

@main
struct hackathonApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            Login()
        }
    }
}
