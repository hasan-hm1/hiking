//
//  CustomCircleView.swift
//  Hiking
//
//  Created by Hasan on 3/26/24.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimateCircle : Bool = false
    var body: some View {
        ZStack {
            Circle()
                .fill(LinearGradient(gradient: Gradient(colors: [ Color.indigo, Color.colorSalmonLight]),
               startPoint: isAnimateCircle ? .topLeading : .bottomLeading,
                                     endPoint: isAnimateCircle ? .bottomTrailing : .topTrailing))
                .frame(width: 256 ,height: 256)
                .onAppear(){
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)){
                        isAnimateCircle.toggle()
                    }
            }
            MotionAnimationView()
        }
        .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircleView()
}
