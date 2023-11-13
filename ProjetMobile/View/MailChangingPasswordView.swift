//
//  MailChangingPasswordView.swift
//  ProjetMobile
//
//  Created by IssamGuezmir on 13/11/2023.
//

import SwiftUI

struct MailChangingPasswordView: View {
    @State private var password = ""
    @State private var isPasswordValid = true


    var body: some View {

        ZStack{
            VStack(alignment: .leading){
                Text("Changing password ! ")
                    .foregroundColor(.green)
                    .fontWeight(.bold)
                    
                
                
                VStack{
                    SecureField("Please Enter your new Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .onChange(of: password, perform: {
                            newValue in isPasswordValid = isValidPassword(newValue)
                        })
                    if !isPasswordValid {
                                      Text("Password must be at least 8 characters")
                                          .foregroundColor(.red)
                                  }
                }
                
            }
           
            
            
           
            
            
        }.padding()
    }
}

func isValidPassword(_ password: String) -> Bool {
    return password.count >= 8
}
struct MailChangingPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        MailChangingPasswordView()
    }
}
