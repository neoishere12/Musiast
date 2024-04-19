//
//  signOut.swift
//  Musiast
//
//  Created by Nitin Singh Manhas on 17/04/24.
//

import Foundation
import Firebase

func handleSignOut() {
    do {
        try Auth.auth().signOut()
    } catch {
        print("Error signing out: \(error.localizedDescription)")
    }
}
