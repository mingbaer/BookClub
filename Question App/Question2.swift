//
//  Question 2.swift
//  Question App
//
//  Created by Alexandra Baer Chan on 4/25/24.
//

import SwiftUI

struct Question2: View {
    @State var recommendation2 = Image("book icon")
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 255 / 255, green: 255 / 255, blue: 63 / 255)
                    .ignoresSafeArea()
                VStack {
                    Spacer()
                    Image("book icon")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(.trailing, 200)
                    
                    Text("What do you want to be when you grow up?")
                        .padding()
                        .font(.custom("Times New Roman", fixedSize: 40))
                        .multilineTextAlignment(.center)
                        .italic()
                        .foregroundColor(Color.black)
                    
                    Button("A BASKETBALL PLAYER") {recommendation2 = Image("the crossover")
                            .resizable(resizingMode: .stretch)
                    }
                    .buttonStyle(.borderedProminent)
                    .font(.custom("Futura", fixedSize: 30))
                    .tint(Color(red: 191 / 255, green: 210 / 255, blue: 0 / 255))
                    
                    Button("A MUSICIAN") {recommendation2 = Image("on the come up")
                            .resizable(resizingMode: .stretch)
                    }
                    .buttonStyle(.borderedProminent)
                    .font(.custom("Futura", fixedSize: 30))
                    .tint(Color(red: 128 / 255, green: 185 / 255, blue: 24 / 255))
                    
                    Button("A POET") {recommendation2 = Image("poet x")
                            .resizable(resizingMode: .stretch)
                    }
                    .buttonStyle(.borderedProminent)
                    .font(.custom("Futura", fixedSize: 30))
                    .tint(Color(red: 43 / 255, green: 147 / 255, blue: 72 / 255))
                    
                    Spacer()
                    
                    Text("Try this \(recommendation2)!")
                        .font(.custom("Futura", fixedSize: 30))
                    NavigationLink(destination: Final_Question()) {
                        Text("Not quite, try again")
                            .foregroundColor(Color.black) .font(.custom("Futura", fixedSize: 20))
                            .italic()
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
    Question2()
}
