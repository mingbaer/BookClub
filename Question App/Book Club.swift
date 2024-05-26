//
//  Final Question.swift
//  Question App
//
//  Created by Alexandra Baer Chan on 4/25/24.
//

import SwiftUI

struct Final_Question: View {
    @State var recommendation3 = Image("book icon")
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 255 / 255, green: 255 / 255, blue: 63 / 255)
                    .ignoresSafeArea()
                VStack {
                    Image("book icon")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(.trailing, 200)
                    Text("I'm looking to read about a protagonist who...")
                        .padding()
                        .font(.custom("Times New Roman", fixedSize: 40))
                        .multilineTextAlignment(.center)
                        .italic()
                        .foregroundColor(Color.black)
                    Button("EXPLORES A QUEER ROMANCE") {recommendation3 = Image("heartstopper")
                            .resizable(resizingMode: .stretch)
                    }
                    .buttonStyle(.borderedProminent)
                    .font(.custom("Futura", fixedSize: 20))
                    .tint(Color(red: 191 / 255, green: 210 / 255, blue: 0 / 255))
                    
                    Button("TAKES DOWN A DYSTOPIAN WORLD") {recommendation3 = Image("the giver")
                            .resizable(resizingMode: .stretch)
                    }
                    .buttonStyle(.borderedProminent)
                    .font(.custom("Futura", fixedSize: 20))
                    .tint(Color(red: 128 / 255, green: 185 / 255, blue: 24 / 255))
                    
                    Button("FIGHTS FOR RACIAL JUSTICE") {
                        recommendation3 = Image("thug")
                            .resizable(resizingMode: .stretch)
                    }
                    .buttonStyle(.borderedProminent)
                    .font(.custom("Futura", fixedSize: 20))
                    .tint(Color(red: 43 / 255, green: 147 / 255, blue: 72 / 255))
                   
                    Spacer()
                    
                    Text("Try this \(recommendation3)!")
                        .font(.custom("Futura", size: 30))
                    
                    NavigationLink(destination: Question1()) {
                        Text("Back to the beginning...")
                            .foregroundColor(.black)
                            .italic()
                            .font(.custom("Futura", size: 20))
                    }
                    
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

                                NavigationLink(destination:Reviews()) {
                                    Text("Reviews")
                                        .font(.custom("Futura", fixedSize: 12))
                                        .foregroundColor(Color(red: 43 / 255, green: 147 / 255, blue: 72 / 255))
                                        .padding()
                                }
                                Spacer()
                                NavigationLink(destination:About()) {
                                    Text("About")
                                        .font(.custom("Futura", fixedSize: 12))
                                        .foregroundColor(Color(red: 43 / 255, green: 147 / 255, blue: 72 / 255))
                                        .padding()
                                    }
                                Spacer()
                                }
                            }
                }
            }
        }
    }
}

#Preview {
    Final_Question()
}
