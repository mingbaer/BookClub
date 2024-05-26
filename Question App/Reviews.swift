//
//  Reviews.swift
//  Question App
//
//  Created by Alexandra Baer Chan on 5/26/24.
//

import SwiftUI

struct Reviews: View {
    @State private var title = ""
    @State private var author = ""
    @State private var review = ""
    @State var message = ""
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 255 / 255, green: 255 / 255, blue: 63 / 255)
                .ignoresSafeArea()
                
                VStack {
                    HStack {
                        Image("review")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                        VStack {
                            Spacer()
                            Text("Book")
                                .font(.custom("Times New Roman", fixedSize: 70))
                                .padding(.trailing, 20)
                                
                            Text("Reviews")
                                .font(.custom("Times New Roman", fixedSize: 40))
                                .italic()
                                .padding(.trailing, 10)
                        }
                    }
                    Spacer()
                        .frame(height: 20)

                    Text("How did you like the book?")
                        .font(.custom("Times New Roman", fixedSize: 40))
                        .multilineTextAlignment(.center)
                        .italic()
                        .padding()
                    
                    Text("\(message)")
                        .font(.custom("Futura", fixedSize: 16))
                        .multilineTextAlignment(.center)
                        .padding()
                    
                    Spacer()
                        .frame(height: 20)

                    
                    Text("What is the title?")
                        .foregroundColor(Color.black)
                        .font(.custom("Futura", fixedSize: 20))
                    TextField("", text: $title)
                        .font(.custom("Futura", fixedSize: 20))
                        .multilineTextAlignment(.center)
                        .border(Color(red: 43 / 255, green: 147 / 255, blue: 72 / 255))
                        .padding(.horizontal, 10)

                    Spacer()
                    
                    Text("Who is the author?")
                        .foregroundColor(Color.black)
                        .font(.custom("Futura", fixedSize: 20))
                    TextField("", text: $author)
                        .font(.custom("Futura", fixedSize: 20))
                        .multilineTextAlignment(.center)
                        .border(Color(red: 43 / 255, green: 147 / 255, blue: 72 / 255))
                        .padding(.horizontal, 10)
                    
                    Spacer()
                    
                    Text("What is your review?")
                        .foregroundColor(Color.black)
                        .font(.custom("Futura", fixedSize: 20))
                    TextField("", text: $review)
                        .font(.custom("Futura", fixedSize: 20))
                        .multilineTextAlignment(.center)
                        .border(Color(red: 43 / 255, green: 147 / 255, blue: 72 / 255))
                        .padding(.horizontal, 10)
                    
                    Spacer()
                        .frame(height: 40)
                    
                    Button("SUBMIT REVIEW") {
                        message = "Review of \(title) by \(author): \(review)."
                    }
                    .buttonStyle(.borderedProminent)
                    .font(.custom("Futura", fixedSize: 20))
                    .tint(Color(red: 128 / 255, green: 185 / 255, blue: 24 / 255))
                    .padding()
                    
                    Spacer()
                        .frame(height: 20)
                    
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
    Reviews()
}
