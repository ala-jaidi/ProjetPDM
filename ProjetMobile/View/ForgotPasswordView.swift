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
    @State private var password = ""
    @State private var isEmailValid = true
    
    var body: some View {
        VStack {
            VStack{
                Text("Enter your email ")
                    .font(.title3)
                    .foregroundColor(.green)
                    .fontWeight(.bold)
                    .frame(alignment: .leading)
            }
            
            VStack{
                TextField("Enter Your Email", text: $email)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .onChange(of: email, perform: { newValue in
                        isEmailValid = isValidEmail(newValue)
                                           })
            }
            if !isEmailValid {
                                Text("Invalid email address")
                                    .foregroundColor(.red)
                            }
            
            VStack{
                
                Button("Send"){
                    
                }
                .font(.title2)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)
            }
            
        }.padding()
        
    }
    
    func isValidEmail(_ email: String) -> Bool {
            let emailPredicate = NSPredicate(format: "SELF MATCHES %@", "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}")
            return emailPredicate.evaluate(with: email)
        }
    
    struct ForgotPasswordView_Previews: PreviewProvider {
        static var previews: some View {
            ForgotPasswordView()
        }
    }
    
}
