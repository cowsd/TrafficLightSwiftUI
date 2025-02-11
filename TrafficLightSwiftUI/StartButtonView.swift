//
//  StartButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by Alex Pesenka on 11/02/25.
//

import SwiftUI

struct StartButtonView: View {
    
    let title: String
    let action: () -> Void
    
    var body: some View {
        
        Button(action: action) {
            Text(title)
                .font(.body)
                .fontWeight(.semibold)
                .foregroundColor(.white)
        }
        .frame(width: 100, height: 60)
        .background(.blue)
        .clipShape(.rect(cornerRadius: 20))
    }
}

#Preview {
    StartButtonView(title: "Start", action: {})
}
