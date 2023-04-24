//
//  ButtonNavBar.swift
//  hackathon
//
//  Created by CEDAM18 on 24/04/23.
//

import SwiftUI

struct ButtonNavBar: View {
    var body: some View {
        Text("Nav Bar")
            .toolbar {
                Button("Inicio") {
                    print("Inicio apretado")
                }
                //Chat
                //Foro
                //Documentos
            }
    }
}

struct ButtonNavBar_Previews: PreviewProvider {
    static var previews: some View {
        ButtonNavBar()
    }
}
