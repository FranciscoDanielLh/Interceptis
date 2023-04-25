//
//  Login.swift
//  hackathon
//
//  Created by CEDAM19 on 24/04/23.
//

import SwiftUI

struct Login: View {
    @State var name: String = ""
    @State var password: String = ""
    @State var showPassword: Bool = false
    let authC = AuthConnector()
    var isSignInButtonDisabled: Bool {
           [name, password].contains(where: \.isEmpty)
       }
       
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 15) {
                 Spacer()
                 
                 TextField("Name",
                           text: $name ,
                           prompt: Text("Usuario").foregroundColor(.blue)
                 )
                 .padding(10)
                 .overlay {
                     RoundedRectangle(cornerRadius: 10)
                         .stroke(.blue, lineWidth: 2)
                 }
                 .padding(.horizontal)

            HStack {
                Group {
                    if showPassword {
                        TextField("Contraseña", // how to create a secure text field
                                    text: $password,
                                    prompt: Text("Contraseña").foregroundColor(.red)) // How to change the color of the TextField Placeholder
                    } else {
                        SecureField("Contraseña", // how to create a secure text field
                                    text: $password,
                                    prompt: Text("Contraseña").foregroundColor(.red)) // How to change the color of the TextField Placeholder
                    }
                }
                .padding(10)
                .overlay {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.red, lineWidth: 2) // How to add rounded corner to a TextField and change it colour
                }

                Button { // add this new button
                    showPassword.toggle()
                } label: {
                    Image(systemName: showPassword ? "eye.slash" : "eye")
                        .foregroundColor(.red)
                }

            }.padding(.horizontal)

                 Spacer()
            
            Button {
                 authC.processPrompt(name:name)
            } label: {
                Text("Iniciar Sesión")
                    .font(.title2)
                    .bold()
                    .foregroundColor(.white)
            }
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .background(
                isSignInButtonDisabled ? // how to add a gradient to a button in SwiftUI if the button is disabled
                LinearGradient(colors: [.gray], startPoint: .topLeading, endPoint: .bottomTrailing) :
                    LinearGradient(colors: [.blue, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            .cornerRadius(20)
            .disabled(isSignInButtonDisabled) // how to disable while some condition is applied
            .padding()
             }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
