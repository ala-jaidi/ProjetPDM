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
            .padding()
        }
    }
    
    struct ForgotPasswordView_Previews: PreviewProvider {
        static var previews: some View {
            ForgotPasswordView()
        }
    }
    
}
