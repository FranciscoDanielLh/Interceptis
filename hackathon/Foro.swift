//
//  Foro.swift
//  hackathon
//
//  Created by CEDAM19 on 25/04/23.
//

import FirebaseCore
import FirebaseFirestore
import FirebaseFirestoreSwift
import SwiftUI



struct Foro: View {
    
    let dbf = Firestore.firestore()
    
    
    var body: some View {
        Text("hola")
         var ref = dbf.collection("users").addDocument(data: [
            "first": "Hola",
            "last": "Lovelace",
            "born": 1815
        ]) { err in
            if let err = err {
                print("Error adding document: \(err)")
            } else {
               print("bien")
            }
        }
    }
}

struct Foro_Previews: PreviewProvider {
    static var previews: some View {
        Foro()
    }
}
