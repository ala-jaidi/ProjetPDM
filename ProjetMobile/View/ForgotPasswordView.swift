//
//  ForgotPasswordView.swift
//  ProjetMobile
//
//  Created by MacOS on 7/11/2023.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State private var email = ""
    @State private var isPasswordResetSent = false

    var body: some View {
        VStack {
            if isPasswordResetSent {
                Text("Un email de réinitialisation de mot de passe a été envoyé à \(email). Veuillez vérifier votre boîte de réception.")
                    .font(.title)
                    .foregroundColor(.green)
                    .multilineTextAlignment(.center)
                    .padding()
            } else {
                Text("Forgot Password")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()

                TextField("Entrez votre adresse e-mail", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                   

                Button(action: {
                   //function reset
                    isPasswordResetSent = true
                }) {
                    Text("Réinitialiser le mot de passe")
                        .font(.title2)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
        }
        .padding()
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView()
    }
}

