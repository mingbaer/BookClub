//
//  SwiftUIView.swift
//  Question App
//
//  Created by Alexandra Baer Chan on 5/25/24.
//

import SwiftUI

struct Question1: View {
    @State var recommendation1 = Image("book icon")
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
                    
                    Text("What is your favorite genre of movies?")
                        .padding()
                        .font(.custom("Times New Roman", fixedSize: 40))
                        .multilineTextAlignment(.center)
                        .italic()
                        .foregroundColor(Color.black)
                  
                    Button("HORROR MOVIES") {recommendation1 = Image("the collector")
                            .resizable(resizingMode: .stretch)
                    }
                    .buttonStyle(.borderedProminent)
                    .font(.custom("Futura", fixedSize: 30))
                    .tint(Color(red: 191 / 255, green: 210 / 255, blue: 0 / 255))

                    Button("ROMANTIC MOVIES") {recommendation1 =
                        Image("just listen")
                            .resizable(resizingMode: .stretch)
                    }
                    .buttonStyle(.borderedProminent)
                    .font(.custom("Futura", fixedSize: 30))
                    .tint(Color(red: 128 / 255, green: 185 / 255, blue: 24 / 255))
                    
                    Button("ACTION MOVIES") { recommendation1 = Image("hunger games")
                            .resizable(resizingMode: .stretch)
                        
                    }
                    .buttonStyle(.borderedProminent)
                    .font(.custom("Futura", fixedSize: 30))
                    .tint(Color(red: 43 / 255, green: 147 / 255, blue: 72 / 255))
                    
                    Spacer()
                    
                    Text("Try this \(recommendation1)!")
                        .font(.custom("Futura", fixedSize: 30))

                    NavigationLink(destination: Question2()) {
                        Text("Not quite, try again")
                            .foregroundColor(Color.black) .font(.custom("Futura", fixedSize: 20))
                            .italic()
                                }
                    Spacer()
                }
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
     
#Preview {
    Question1()
}
