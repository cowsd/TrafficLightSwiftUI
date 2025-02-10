//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Alex Pesenka on 10/02/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isFirstPress = true
    @State private var currentLight = CurrentLight.red
    
    private let lightOn = 1.0
    private let lightOff = 0.3
    
    var body: some View {
        VStack(spacing: 20) {
            trafficLightCircle(color: .red, isOn: currentLight == .red )
            trafficLightCircle(color: .yellow, isOn: currentLight == .yellow)
            trafficLightCircle(color: .green, isOn: currentLight == .green)
            Spacer()
            
            Button(action: changeTrafficLight) {
                Text(isFirstPress ? "Start" : "Next")
                    .padding(20)
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }

        }
        .padding()
        
    }
}

private extension ContentView {
    
    func trafficLightCircle(color: Color, isOn: Bool) -> some View {
        Circle()
            .foregroundColor(color)
            .opacity(isOn ? lightOn : lightOff)
            .frame(width: 120, height: 120)
    }
    
    func changeTrafficLight() {
        if isFirstPress {
            isFirstPress = false
        }

        switch currentLight {
            case .red:
            currentLight = .yellow
        case .yellow:
            currentLight = .green
        case .green:
            currentLight = .red
        }
    }
    
    enum CurrentLight {
        case red, yellow, green
    }
    
}


#Preview {
    ContentView()
}
