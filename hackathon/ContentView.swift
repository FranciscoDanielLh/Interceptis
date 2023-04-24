import SwiftUI



struct ContentView: View {
    var authToken:String = "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"
    
    @State private var search:String = ""
    let openAI = OpenAIConnector()
    
    private func performOpenAISearch() async {
        
        openAI.processPrompt(prompt: "Hola! ¿sabes sobre la constitucion mexicana?")
        
    }
    
    var body: some View {
        NavigationView{
            VStack{
                TextField("Escribe", text: $search)
                    .onSubmit {
                        if !search.isEmpty{
                            Task {
                                await performOpenAISearch()

                            }
                        }
                    }
            }.navigationTitle("INTERCENTIS")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
