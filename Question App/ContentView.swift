//
//  ContentView.swift
//  Question App
//
//  Created by Alexandra Baer Chan on 4/25/24.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var subtitle = ""
    var body: some View {
        NavigationStack {
            ZStack {
                Color(red: 255 / 255, green: 255 / 255, blue: 63 / 255)
                    .ignoresSafeArea()
                Spacer(minLength: 60)
                VStack {
                    Text("Book")
                        .font(.custom("Times New Roman", fixedSize: 90))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.leading, 160)
                        
                    Text("Club")
                        .font(.custom("Times New Roman", fixedSize: 90))
                        .italic()
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.leading, 160)

                    Spacer()
                    
                    NavigationLink(destination: Question1()) {
                        Text("Take the Quiz!")
                    }
                    .font(.custom("Futura", fixedSize: 20))
                    .foregroundStyle(.white)
                    .frame(width: 100.0, height: 100.0)
                    .background(Color(red: 191 / 255, green: 210 / 255, blue: 0 / 255))
                    .clipShape(Circle())
                    .padding(.leading, 200)
                   
                    NavigationLink(destination: Reviews()) {
                        Text("Write a Review!")
                    }
                    .font(.custom("Futura", fixedSize: 20))
                    .foregroundStyle(.white)
                    .frame(width: 100.0, height: 100.0)
                    .background(Color(red: 128 / 255, green: 185 / 255, blue: 24 / 255))
                    .clipShape(Circle())
                    .padding(.leading, 200)
                    
                    NavigationLink(destination: About()) {
                        Text("About")
                    }
                    .font(.custom("Futura", fixedSize: 20))
                    .foregroundStyle(.white)
                    .frame(width: 100.0, height: 100.0)
                    .background(Color(red: 43 / 255, green: 147 / 255, blue: 72 / 255))
                    .clipShape(Circle())
                    .padding(.leading, 200)
                   
                    Text("Let's Read!")
                        .italic()
                        .font(.custom("Times New Roman", fixedSize: 24))
                        .padding(.trailing, 200)

                }
                Spacer()
                Image("book icon")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fill)
                    .padding(.trailing, 200)
                    .frame(width: 400.0, height: 400.0)
                Spacer()
                
            }
        }
    }
}
        

#Preview {
    ContentView()
}
