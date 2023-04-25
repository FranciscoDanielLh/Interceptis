mport SwiftUI



struct ContentView: View {
    @State private var selection: Tab = .inicio
    var authToken:String = "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"
    
    @State private var search:String = ""
    let openAI = OpenAIConnector()
    
    private func performOpenAISearch() async {
        
        openAI.processPrompt(prompt: "Hola! ¿sabes sobre la constitucion mexicana?")
        
    }
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem({ Image(systemName: "house") })
                .frame(maxWidth: .infinity)
            DocumentsView()
                .tabItem({ Image(systemName: "menucard" )})
                .frame(maxWidth: .infinity)
            ChatBotView()
                .tabItem({ Image("Chat") })
            ForumView()
                .tabItem({
                    Image(systemName: "menucard")
                })
                .frame(maxWidth: .infinity)
        }.background(Color.blue)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}