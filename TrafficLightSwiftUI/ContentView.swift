//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Alex Pesenka on 10/02/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var buttonTitle = "Start"
    
    @State private var redLightState = 0.3
    @State private var yellowLightState = 0.3
    @State private var greenLightState = 0.3
    
    @State private var currentLight = CurrentLight.off
    
    
    var body: some View {
        VStack(spacing: 20) {
            ColorCircleView(
                color: .red,
                opacity: currentLight == .red ? 1 : 0.3
            )
            
            ColorCircleView(
                color: .yellow,
                opacity: currentLight == .yellow ? 1 : 0.3
            )
            
            ColorCircleView(
                color: .green,
                opacity: currentLight == .green ? 1 : 0.3
            )
            
            Spacer()
            
            StartButtonView(title: buttonTitle) {
                if buttonTitle == "Start" {
                    buttonTitle = "Next"
                }
                nextColor()
            }
        }
        .padding()
        
    }
}



private extension ContentView {
    enum CurrentLight {
        case off, red, yellow, green
    }
    
    private func nextColor() {
        switch currentLight {
        case .off: currentLight = .red
        case .red: currentLight = .yellow
        case .yellow: currentLight = .green
        case .green: currentLight = .red
        }
    }
}


#Preview {
    ContentView()
}
