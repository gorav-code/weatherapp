//
//  WeatherDayView.swift
//  weatherapp
//
//  Created by Gaurav Kundalwal on 16/01/24.
//

import SwiftUI

struct WeatherDayView: View{
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View{
        VStack(content: {
            Text(dayOfWeek)
                .font(.system(size: 18, weight: .medium, design: .default))
                .foregroundStyle(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 42, height: 42)
            Text(String(temperature) + "°C")
                .font(.system(size: 18, weight: .medium))
                .foregroundStyle(.white)
        })
    }
}
