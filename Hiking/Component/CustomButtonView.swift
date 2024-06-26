//
//  CustomButtonView.swift
//  Hiking
//
//  Created by Hasan on 3/24/24.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(LinearGradient(colors: [.white, .colorGreenLight , .colorGreenMedium], startPoint: .top, endPoint: .bottom))
            Circle()
                .stroke(LinearGradient(
                    colors: [.colorGrayLight, .colorGrayMedium], startPoint: .top, endPoint: .bottom
                ) , lineWidth: 4)
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 32))
                .foregroundStyle(LinearGradient(colors: [.colorGrayLight, .colorGrayMedium], startPoint: .top, endPoint: .bottom))
        }.frame(width: 58, height: 58)
    }
}

#Preview {
    CustomButtonView()
        .previewLayout(.fixed(width: 100, height: 100))
        .padding()
}
