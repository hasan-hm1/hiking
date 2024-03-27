//
//  MotionAnimationView.swift
//  Hiking
//
//  Created by Hasan on 3/26/24.
//

import SwiftUI

struct MotionAnimationView: View {
    
    private var circleCount : Int = Int.random(in: 6...12)
    @State private var isAnimating : Bool = false
    
    func randomCoordinates()-> CGFloat {
        print("coordinates changed")
        return CGFloat.random(in: 0...256)
    }
    
    func randomSize()-> CGFloat {
        print("size changed")
        return CGFloat.random(in: 4...80)
    }
    
    func randomScale() -> CGFloat {
        print("scale changed")
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    
    func randomSpeed() -> Double {
        print("speed changed")
        return Double.random(in: 0.05...1.0)
    }
    
    func randomDelay() -> Double {
        print("delay changed")
        return Double.random(in: 0...2)
    }
    
    var body: some View {
        ZStack{
            ForEach(0...circleCount,id: \.self){ item in
                Circle()
                    .fill(.white)
                    .opacity(0.25)
                    .frame(width: randomSize())
                    .scaleEffect(isAnimating ? randomScale() : 1)
                    .position(x:randomCoordinates(), y: randomCoordinates())
                    .onAppear(){
                        withAnimation(.interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay())
                        ){
                            isAnimating = true
                        }
                    }
                    .mask(Circle())
                    .drawingGroup()
            }
        }.frame(width: 256, height: 256)
        
        
    }
}

#Preview {
    MotionAnimationView()
        .background(Circle()
            .fill(.teal))
}
