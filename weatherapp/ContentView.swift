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
                HStack(spacing: 20){
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 20)
                    
                    WeatherDayView(dayOfWeek: "WED", 
                                   imageName: "sun.max.fill",
                                   temperature: 25)
                    
                    WeatherDayView(dayOfWeek: "THU", 
                                   imageName: "wind.snow",
                                   temperature: 4)
                    
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "sunset.fill",
                                   temperature: 19)
                    
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "snow",
                                   temperature: 10)
                }
                
                Spacer()
                
                Button {
                    print("tapped")
                } label: {
                    HStack{
                        WeatherDayView(dayOfWeek: "SAT",
                                       imageName: "snow",
                                       temperature: 10)
                        Text("change day time")
                    }
                    
                }
                
                Spacer()
            })
        })
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View{
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View{
        VStack(content: {
            Text(dayOfWeek)
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
            Text(String(temperature))
                .font(.system(size: 26, weight: .medium))
                .foregroundStyle(.white)
        })
    }
}
