//
//  ContentView.swift
//  weatherapp
//
//  Created by Gaurav Kundalwal on 15/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(content: {
            LinearGradient(gradient: Gradient(colors: [.blue, Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack(content: {
                Text("Jaipur")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundStyle(.white)
                    .padding()
                Image(systemName: "cloud.sun.fill")
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 180, height: 180)
                Text("70")
                    .font(.system(size: 70, weight: .medium))
                    .foregroundStyle(.white)
                
                Spacer()
                
                //middle section
                HStack(content: {
                    Spacer()
                    VStack(content: {
                        Text("TUE")
                            .font(.system(size: 20, weight: .medium, design: .default))
                            .foregroundStyle(.white)
                        Image(systemName: "cloud.sun.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                        Text("74")
                            .font(.system(size: 26, weight: .medium))
                            .foregroundStyle(.white)
                    })
                    Spacer()
                    VStack(content: {
                        Text("TUE")
                            .font(.system(size: 20, weight: .medium, design: .default))
                            .foregroundStyle(.white)
                        Image(systemName: "sun.max.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                        Text("70")
                            .font(.system(size: 26, weight: .medium))
                            .foregroundStyle(.white)
                    })
                    Spacer()
                    VStack(content: {
                        Text("TUE")
                            .font(.system(size: 20, weight: .medium, design: .default))
                            .foregroundStyle(.white)
                        Image(systemName: "wind")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 60, height: 60)
                        Text("60")
                            .font(.system(size: 26, weight: .medium))
                            .foregroundStyle(.white)
                    })
                    Spacer()
                })
                Spacer()
            })
        })
    }
}

#Preview {
    ContentView()
}
