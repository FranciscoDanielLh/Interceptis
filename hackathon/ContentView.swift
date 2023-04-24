import SwiftUI



struct ContentView: View {
    
    @State private var prompt_f:String = ""
    let openAI = OpenAIConnector()
    
    private func performOpenAISearch(prompt_f:String) async {
        openAI.processPrompt(prompt_f: prompt_f)
       
        
    }
    
    var body: some View {
        NavigationView{
            VStack{
                TextField("Escribe", text: $prompt_f)
                    .onSubmit {
                        if !prompt_f.isEmpty{
                            Task {
                            await performOpenAISearch(prompt_f: prompt_f)

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
