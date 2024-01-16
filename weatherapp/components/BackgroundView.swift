//
//  BackgroundView.swift
//  weatherapp
//
//  Created by Gaurav Kundalwal on 16/01/24.
//

import SwiftUI
import Foundation

struct BackgroundView: View {
    var isNight: Bool
    
    var body: some View {
//        LinearGradient(gradient: 
//                        Gradient(colors: [isNight ? .black : .blue,
//                                                isNight ? .gray : Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
//            .ignoresSafeArea()
        
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea()
    }
}
