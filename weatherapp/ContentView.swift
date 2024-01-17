//
//  ContentView.swift
//  weatherapp
//
//  Created by Gaurav Kundalwal on 15/01/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack{
            //lightBlue is color from our assets
            BackgroundView(isNight: isNight)
            
            VStack{
                CityTextView(cityName: "Cupertino, CA")
                MainWeatherSatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                                     temperature: 70)
                
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
                    print("button tapped")
                    isNight = !isNight
                } label: {
                    WeatherButton(title: "Change Day Time",
                                  textColor: .blue,
                                  backgroundColor: .white)
                    .onAppear{
                        print("btn Appeared")
                    }
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}


