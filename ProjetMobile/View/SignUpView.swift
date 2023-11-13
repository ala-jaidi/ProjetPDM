//
//  SignUpView.swift
//  ProjetMobile
//
//  Created by MacOS on 7/11/2023.
//

import SwiftUI

struct SignUpView: View {
    @State private var fullname = ""
    @State private var email = ""
    @State private var password = ""
    @State private var VerifyPassword = ""
    


    
    var body: some View {
        ZStack {
            VStack(alignment: .leading){
                Text("Create an account")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                
                Text("Connect with your friends today ! 👋")
                    .font(.title3)
                    .foregroundColor(.gray)
                    .frame(alignment: .leading)
                
                Text("Full Name")
                    .font(.title3)
                    .foregroundColor(.green)
                    .frame(alignment: .leading)
                
                VStack{
                    TextField("Enter your fullname", text: $fullname)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                
                Text("Email Adress")
                    .font(.title3)
                    .foregroundColor(.green)
                    .frame(alignment: .leading)
                VStack{
                    TextField("Enter your Email adress" , text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
               
                
                VStack{
                
                    Text("password")
                                      .font(.title3)
                                      .foregroundColor(.green)
                                      .frame(alignment: .leading)
                                      .padding(.leading , -180)
                                  
                    SecureField("Please Enter your Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Text("Verify password")
                        .font(.title3)
                        .foregroundColor(.green)
                        .frame(alignment: .leading)
                        .padding(.leading , -180)
                    SecureField("Please Enter your Password", text: $VerifyPassword)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                   
                    Button("Sign Up"){
                        
                    }
                    .font(.title2)
                    .fontWeight(.bold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                    Text("Or With")
                        
                        .foregroundColor(.gray)
                        .frame(alignment: .leading)
                    
                    HStack {
                        Button(action: {
                            // Action à effectuer lorsque le bouton Facebook est pressé
                        }) {
                            HStack {
                                Image("facebook") // Remplacez "facebook_icon" par le nom de votre image Facebook
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20) // Ajustez la taille de l'image selon vos besoins
                                
                                Text("Facebook")
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                        Button(action: {
                            
                        }) {
                            HStack {
                                Image("Gmail") // Remplacez "email_icon" par le nom de votre image Gmail ou Email
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 20, height: 20) // Ajustez la taille de l'image selon vos besoins
                                
                                Text("Gmail")
                            }
                        }
                        .frame(maxWidth: .infinity)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                    }

                }
            }.padding()
            VStack{
                Spacer()
                HStack{
                    Text("Already have an account ?")
                        
                    Text("Login")
                        .font(.title3)
                        .foregroundColor(.green)
                    
                }
            }
        }
        
    }
}

    

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
