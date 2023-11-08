//
//  HomeUIView.swift
//  ProjetMobile
//
//  Created by Bechir Kefi on 8/11/2023.
//

import SwiftUI

struct HomeUIView: View {
    var body: some View {
        NavigationView{
            ZStack() {
                ZStack() {
                    NavigationLink(destination: DetailsUIView()) {
                        ZStack() {
                            Image("ph_chat-teardrop-dots-fill")
                            
                        }}
                    .frame(width: 30, height: 30)
                    .offset(x: 139, y: -11)
                    NavigationLink(destination: DetailsUIView()) {
                        ZStack() {
                            Image("fluent_people-community-20-filled")
                        }}
                    .frame(width: 30, height: 30)
                    .offset(x: 46, y: -11)
                    NavigationLink(destination: DetailsUIView()) {
                        ZStack() {
                            Image("material-symbols_track-changes-rounded")
                        }}
                    .frame(width: 30, height: 30)
                    .offset(x: -47, y: -11)
                    NavigationLink(destination: DetailsUIView()) {
                        ZStack() {
                            Image("basil_home-solid")
                        }}
                    .frame(width: 30, height: 30)
                    .offset(x: -140, y: -11)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 169.01, height: 0)
                        .overlay(Rectangle()
                            .stroke(.black, lineWidth: 2.10))
                        .offset(x: -0.49, y: 40)
                    
                }
                .frame(width: 390, height: 100)
                .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                .cornerRadius(20)
                .offset(x: 0, y: 372)
                .shadow(
                    color: Color(red: 0, green: 0, blue: 0, opacity: 0.05), radius: 25
                )
                Text("Good Morning")
                    .font(Font.custom("Poppins", size: 28).weight(.semibold))
                    .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.12))
                    .offset(x: -42, y: -343)
                Text("Tips for sustainability")
                    .font(Font.custom("Poppins", size: 24).weight(.semibold))
                    .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.12))
                    .offset(x: -45, y: -36)
                ZStack() {
                    Group {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 350, height: 222)
                            .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                            .cornerRadius(16)
                            .offset(x: 0, y: 0)
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 170, height: 0)
                            .overlay(
                                Rectangle()
                                    .stroke(
                                        Color(red: 0, green: 0, blue: 0).opacity(0.07), lineWidth: 0.50
                                    )
                            )
                            .offset(x: -31, y: -85)
                            .rotationEffect(.degrees(-90))
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 170, height: 0)
                            .overlay(
                                Rectangle()
                                    .stroke(
                                        Color(red: 0, green: 0, blue: 0).opacity(0.07), lineWidth: 0.50
                                    )
                            )
                            .offset(x: 27, y: -85)
                            .rotationEffect(.degrees(-90))
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 170, height: 0)
                            .overlay(
                                Rectangle()
                                    .stroke(
                                        Color(red: 0, green: 0, blue: 0).opacity(0.07), lineWidth: 0.50
                                    )
                            )
                            .offset(x: 85, y: -85)
                            .rotationEffect(.degrees(-90))
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 170, height: 0)
                            .overlay(
                                Rectangle()
                                    .stroke(
                                        Color(red: 0, green: 0, blue: 0).opacity(0.07), lineWidth: 0.50
                                    )
                            )
                            .offset(x: 143, y: -85)
                            .rotationEffect(.degrees(-90))
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 170, height: 0)
                            .overlay(
                                Rectangle()
                                    .stroke(
                                        Color(red: 0, green: 0, blue: 0).opacity(0.07), lineWidth: 0.50
                                    )
                            )
                            .offset(x: 201, y: -85)
                            .rotationEffect(.degrees(-90))
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 32, height: 139)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color(red: 0.44, green: 0.88, blue: 0), Color(red: 0.44, green: 0.88, blue: 0).opacity(0.50)]), startPoint: .top, endPoint: .bottom)
                            )
                            .cornerRadius(20)
                            .offset(x: -144, y: -3.50)
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 32, height: 104)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color(red: 0.44, green: 0.88, blue: 0), Color(red: 0.44, green: 0.88, blue: 0).opacity(0.50)]), startPoint: .top, endPoint: .bottom)
                            )
                            .cornerRadius(20)
                            .offset(x: -86, y: -37)
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 32, height: 101)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color(red: 0.44, green: 0.88, blue: 0), Color(red: 0.44, green: 0.88, blue: 0).opacity(0.50)]), startPoint: .top, endPoint: .bottom)
                            )
                            .cornerRadius(20)
                            .offset(x: -28, y: -47.50)
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 32, height: 55)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color(red: 0.44, green: 0.88, blue: 0), Color(red: 0.44, green: 0.88, blue: 0).opacity(0.50)]), startPoint: .top, endPoint: .bottom)
                            )
                            .cornerRadius(20)
                            .offset(x: -28, y: 38.50)
                    };Group {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 32, height: 73)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color(red: 0.44, green: 0.88, blue: 0), Color(red: 0.44, green: 0.88, blue: 0).opacity(0.50)]), startPoint: .top, endPoint: .bottom)
                            )
                            .cornerRadius(20)
                            .offset(x: 30, y: -36.50)
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 32, height: 49)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color(red: 0.44, green: 0.88, blue: 0), Color(red: 0.44, green: 0.88, blue: 0).opacity(0.50)]), startPoint: .top, endPoint: .bottom)
                            )
                            .cornerRadius(20)
                            .offset(x: 30, y: 32.50)
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 32, height: 120)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color(red: 0.44, green: 0.88, blue: 0), Color(red: 0.44, green: 0.88, blue: 0).opacity(0.50)]), startPoint: .top, endPoint: .bottom)
                            )
                            .cornerRadius(20)
                            .offset(x: 88, y: -13)
                        
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 32, height: 113)
                            .background(
                                LinearGradient(gradient: Gradient(colors: [Color(red: 0.44, green: 0.88, blue: 0), Color(red: 0.44, green: 0.88, blue: 0).opacity(0.50)]), startPoint: .top, endPoint: .bottom)
                            )
                            .cornerRadius(20)
                            .offset(x: 146, y: 9.50)
                        Text("Mon")
                            .font(Font.custom("Poppins", size: 12).weight(.medium))
                            .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.12))
                            .offset(x: -143.50, y: 90)
                        Text("Tue")
                            .font(Font.custom("Poppins", size: 12).weight(.medium))
                            .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.12))
                            .offset(x: -87, y: 90)
                        Text("Wed")
                            .font(Font.custom("Poppins", size: 12).weight(.medium))
                            .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.12))
                            .offset(x: -28, y: 90)
                        Text("Thu")
                            .font(Font.custom("Poppins", size: 12).weight(.medium))
                            .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.12))
                            .offset(x: 30.50, y: 90)
                        Text("Fri")
                            .font(Font.custom("Poppins", size: 12).weight(.medium))
                            .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.12))
                            .offset(x: 87, y: 90)
                        Text("Sat")
                            .font(Font.custom("Poppins", size: 12).weight(.medium))
                            .foregroundColor(Color(red: 0.12, green: 0.12, blue: 0.12))
                            .offset(x: 146, y: 90)
                    };Group {
                        Ellipse()
                            .foregroundColor(.clear)
                            .frame(width: 14, height: 14)
                            .background(.white)
                            .offset(x: -144, y: 50)
                        Ellipse()
                            .foregroundColor(.clear)
                            .frame(width: 14, height: 14)
                            .background(.white)
                            .offset(x: 88, y: -58)
                        Ellipse()
                            .foregroundColor(.clear)
                            .frame(width: 14, height: 14)
                            .background(.white)
                            .offset(x: -28, y: -83)
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 322, height: 0)
                            .overlay(
                                Rectangle()
                                    .stroke(
                                        Color(red: 0, green: 0, blue: 0).opacity(0.07), lineWidth: 0.50
                                    )
                            )
                            .offset(x: 1, y: 0)
                    }
                }
                .frame(width: 350, height: 222)
                .offset(x: 0, y: -197)
                NavigationLink(destination: DetailsUIView()) {
                    ZStack() {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 350, height: 128)
                            .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                            .cornerRadius(16)
                            .offset(x: 0, y: 0)
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 119, height: 100)
                            .background(
                                Image("Rectangle 40")
                            )
                            .cornerRadius(14)
                            .offset(x: -101.50, y: -1)
                        Text("Use public transportation...")
                            .font(Font.custom("Poppins", size: 14).weight(.medium))
                            .foregroundColor(.black)
                            .offset(x: 66, y: -31.50)
                        Text("Leave your car behind and take a \ngreener route, walking, biking or \npublic transport. Reduce emissions, \nsave money, and stay fit on the go.")
                            .font(Font.custom("Poppins", size: 10).weight(.medium))
                            .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.50))
                            .offset(x: 62, y: 12)
                    }
                }
                .frame(width: 350, height: 128)
                .offset(x: 0, y: 68)
                NavigationLink(destination: DetailsUIView()) {
                                    ZStack() {
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 350, height: 128)
                                            .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                                            .cornerRadius(16)
                                            .offset(x: 0, y: 0)
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(width: 119, height: 100)
                                            .background(
                                                Image("Rectangle 41")
                                            )
                                            .cornerRadius(14)
                                            .offset(x: -101.50, y: 0)
                                        
                                        Text("Reduce, reuse, and recycle")
                                            .font(Font.custom("Poppins", size: 14).weight(.medium))
                                            .foregroundColor(.black)
                                            .offset(x: 65.50, y: -31.50)
                                        Text("a simple mantra that encourages us \nto be mindful of our consumption \nhabits and minimize waste by finding \nnew uses for existing items")
                                            .font(Font.custom("Poppins", size: 10).weight(.medium))
                                            .foregroundColor(Color(red: 0, green: 0, blue: 0).opacity(0.50))
                                            .offset(x: 67, y: 12)
                                    }}
                                .frame(width: 350, height: 128)
                                .offset(x: 0, y: 218)
                                ZStack() {
                                    ZStack() {
                                        Image("mingcute_menu-fill")
                                    }
                                    .frame(width: 24, height: 24)
                                    .offset(x: 0, y: 0)
                                }
                                .frame(width: 24, height: 24)
                                .offset(x: -169, y: -349)
                                NavigationLink(destination: DetailsUIView()) {
                                    ZStack() {
                                        Image("arcticons_maps")
                                    }}
                                .frame(width: 48, height: 48)
                                .offset(x: 151, y: -346)
                                
                                
                            }
                            .frame(width: 390, height: 844)
                            .background(.white)
                            .cornerRadius(20);
                        }
                    }}

                struct HomeUIView_Previews: PreviewProvider {
                  static var previews: some View {
                      HomeUIView()
                  }
                }
