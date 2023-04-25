//
//  DocumentsView.swift
//  hackathon
//
//  Created by CEDAM18 on 24/04/23.
//

import SwiftUI

struct DocumentsView: View {
    private var documentsList = legalDocuments
    @State var searchText = ""
    
    var body: some View {
        NavigationView(content: {
            List {
                ForEach(documents, id: \.self) { document in
                    HStack{
                        
                        if (document.type == "pdf") {
                            Image(systemName: "doc.fill")
                        } else {
                            Image(systemName: "link")
                        }
                        
                        Text(document.name)
                            .frame(width: 300)
                        
                        
                        NavigationLink("", value: URL(string: document.type)!)
                            .foregroundColor(.blue)
                    }
                }
            }
            .searchable(text: $searchText)
            .navigationTitle("Documentos")
        })
    }
    
    var documents: [Document] {
        // let lcDocuments = documentsList.map({$0.name.lowercased()})
        
        // return searchText == "" ? lcDocuments : lcDocuments.filter({
            //$0.contains(searchText.lowercased())
        //})
        
        return searchText == "" ? documentsList :
        documentsList.filter({
            $0.name.lowercased().contains(searchText.lowercased())
        })
    }
}

struct DocumentsView_Previews: PreviewProvider {
    static var previews: some View {
        DocumentsView()
    }
}
