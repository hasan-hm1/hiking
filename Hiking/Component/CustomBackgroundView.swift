//
//  CustomBackgroundView.swift
//  Hiking
//
//  Created by Hasan on 3/24/24.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            // MARK: - Depth
            Color.colorGreenDark
            .cornerRadius(40)
            .offset(y: 12)
            
            
            // MARK: - Light
            Color.colorGreenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            // MARK: - Surface
            LinearGradient(gradient: Gradient(colors: [
                Color.colorGreenLight, Color.colorGreenMedium
            ]), startPoint: .top, endPoint: .bottom)
            .cornerRadius(40)
        }
    }
}

#Preview {
    CustomBackgroundView()
        .padding(20)
}
