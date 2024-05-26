//
//  About.swift
//  Question App
//
//  Created by Alexandra Baer Chan on 5/25/24.
//

import SwiftUI

struct About: View {
    var body: some View {
        ZStack {
            Color(red: 255 / 255, green: 255 / 255, blue: 63 / 255)
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image("girl reading")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                
                Text("About Book Club")
                    .font(.custom("Times New Roman", fixedSize: 40))
                    .multilineTextAlignment(.leading)
                    .italic()
                
                Text("Book Club is a response to a growing crisis of literacy, designed to help teens access and engage in a culture of reading and loving books. Often students don’t know how to pick a book that will interest them.  Book Club is designed to be shared by educators and used by students, to help send students automated reading recommendations based on their interests.  Educators can save time and use technology to help them spread literacy outreach. Students and teens can quickly get personalized recommendations based on their preferences that will help them navigate bookstores and libraries.")
                    .multilineTextAlignment(.center)
                    .padding()
                    .font(.custom("Futura", fixedSize: 16))
                
                Spacer()
                
                .toolbar{
                    ToolbarItemGroup(placement: .bottomBar) {
                        Spacer()
                        NavigationLink(destination:ContentView()) {
                            Text("Home")
                                .font(.custom("Futura", fixedSize: 12))
                                .foregroundColor(Color(red: 43 / 255, green: 147 / 255, blue: 72 / 255))
                                .padding()
                        }
                        Spacer()
                        NavigationLink(destination:Question1()) {
                            Text("Quiz")
                                .font(.custom("Futura", fixedSize: 12))
                                .foregroundColor(Color(red: 43 / 255, green: 147 / 255, blue: 72 / 255))
                                .padding()
                        }
                        Spacer()
                        NavigationLink(destination:Reviews()) {
                            Text("Reviews")
                                .font(.custom("Futura", fixedSize: 12))
                                .foregroundColor(Color(red: 43 / 255, green: 147 / 255, blue: 72 / 255))
                                .padding()
                            }
                        Spacer()
                        }
                    }
                Spacer()
            }
        }
    }
}

#Preview {
    About()
}
