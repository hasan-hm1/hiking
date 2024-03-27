//
//  GradientButton.swift
//  Hiking
//
//  Created by Hasan on 3/25/24.
//

import Foundation
import SwiftUI


struct GradientButton : ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .font(.title3)
            .fontWeight(.heavy)
            .foregroundStyle(
                LinearGradient(colors: [.colorGreenLight, .colorGreenMedium], startPoint: .top, endPoint: .bottom))
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                configuration.isPressed ?
                LinearGradient(colors: [.colorGrayMedium,.colorGrayLight], startPoint: .top, endPoint: .bottom)
        :
                LinearGradient(colors: [.colorGrayLight,.colorGrayMedium], startPoint: .top, endPoint: .bottom))
            .cornerRadius(40)

    }
    
    
}
