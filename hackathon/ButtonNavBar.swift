//
//  ButtonNavBar.swift
//  hackathon
//
//  Created by CEDAM18 on 24/04/23.
//

import SwiftUI


struct ButtonNavBar: View {
    @State private var selection: Tab = .inicio
    
    enum Tab {
        case inicio
        case chat
        case foro
        case documentos
    }
    
    var body: some View {
        TabView(selection: $selection)
        {
            HomeView()
                .tabItem{
                    Label {
                        Text("Inicio")
                    } icon: {
                        Image(systemName: "star")
                    }
                }
            DocumentsView()
                .tabItem {
                    Label {
                        Text("Documentos")
                    } icon: {
                        Image(systemName: "heart")
                    }
                }
            ForumView()
                .tabItem {
                    Label {
                        Text("Foro")
                    } icon: {
                        Image(systemName: "menucard")
                    }
                }
            ContentView()
                .tabItem {
                    Label {
                        Text("Chat")
                            .foregroundColor(.black)
                    } icon: {
                        Image("Chat")
                        
                    }
                }
        }
    }
}

struct ButtonNavBar_Previews: PreviewProvider {
    static var previews: some View {
        ButtonNavBar()
    }
}
