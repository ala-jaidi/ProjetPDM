//
//  SignUpView.swift
//  ProjetMobile
//
//  Created by MacOS on 7/11/2023.
//

import SwiftUI

struct SignUpView: View {
    @State private var firstname = ""
    @State private var lastname = ""
    @State private var email = ""
    @State private var phone = ""
    @State private var password = ""
    @State private var dateBirth = ""
    @State private var VerifyPassword = ""
    @State private var remembreMe = false


    
    var body: some View {
        ZStack {
            VStack(alignment: .leading){
                Text("Create an account")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                
                Text("Connect with your friends today !")
                    .font(.title3)
                    .foregroundColor(.gray)
                    .frame(alignment: .leading)
                
                Text("First Name")
                    .font(.title3)
                    .foregroundColor(.green)
                    .frame(alignment: .leading)
                
                VStack{
                    TextField("Enter your first name", text: $firstname)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                Text("Last Name")
                    .font(.title3)
                    .foregroundColor(.green)
                    .frame(alignment: .leading)
                
                VStack{
                    TextField("Enter your last name" , text: $lastname)
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
                Text("Phone Number")
                    .font(.title3)
                    .foregroundColor(.green)
                    .frame(alignment: .leading)
                
                VStack{
                    TextField("Enter your phone number" , text: $phone)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                   
                    
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
                    
                    HStack{
                        Text("Remember Me")
                            .font(.title3)
                            .foregroundColor(.green)
                            .frame(alignment: .leading)
                        Toggle("", isOn: $remembreMe)
                    }
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
                    
                    HStack{
                        Button("Facebook"){
                            
                        }
                        .frame(maxWidth:  .infinity)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        
                        Button("Email"){
                            
                        }
                        .frame(maxWidth:  .infinity)
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
