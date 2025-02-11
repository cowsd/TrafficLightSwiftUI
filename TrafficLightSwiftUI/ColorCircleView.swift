//
//  ColorCircleView.swift
//  TrafficLightSwiftUI
//
//  Created by Alex Pesenka on 11/02/25.
//

import SwiftUI

struct ColorCircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundStyle(color)
            .opacity(opacity)
            
    }
}

#Preview {
    ColorCircleView(color: .red, opacity: 1.0)
}
