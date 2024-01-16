//
//  MainWeatherStatusView.swift
//  weatherapp
//
//  Created by Gaurav Kundalwal on 16/01/24.
//

import SwiftUI

struct MainWeatherSatusView: View{
    var imageName: String
    var temperature: Int
    
    var body: some View{
        VStack{
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 140, height: 140)
            Text(String(temperature) + "°C")
                .font(.system(size: 60, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}
