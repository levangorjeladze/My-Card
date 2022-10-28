//
//  ContentView.swift
//  My Card
//
//  Created by Levan Gorjeladze on 28.10.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            ZStack{
                Color(red: 0.10, green: 0.75, blue: 0.61).ignoresSafeArea()
                VStack{
                    Image("Avatar")
                        .resizable()
                        .frame(width: 150
                               , height: 150)
                        .clipShape(Circle())
                    //.overlay(Circle())
                    Text("Levan Gorjeladze")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("IOS Developer")
                        .font(.headline)
                        .fontWeight(.light)
                        Divider()
                    Card(image:"phone.fill",
                         message: "+995592123005")
                    Card(image:"envelope.fill",
                         message: "levanigorjeladze@gmail.com")
                }.foregroundColor(.white)
                    
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Card: View {
    let image : String
    let message : String
    var body: some View {
        RoundedRectangle(cornerRadius: 25).frame(height: 50)
            .overlay(HStack
                     {
                Image(systemName:image)
                Text(message)
                    .fontWeight(.semibold)
                
            }.foregroundColor(Color(red: 0.10, green: 0.75, blue: 0.61))
            )
    }
}
