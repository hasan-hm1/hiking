//
//  CardView.swift
//  Hiking
//
//  Created by Hasan on 3/24/24.
//

import SwiftUI

struct CardView: View {
    
    @State private var imageNumber: Int = 1
    @State private var isShowingSheet : Bool = false
    
    
    func changeImage(){
        var number = imageNumber
        repeat {
            number = Int.random(in: 1...5)
        } while number == imageNumber
        imageNumber = number
    }
    var body: some View {
        
        ZStack {
            CustomBackgroundView()
            VStack(alignment: .leading){
                //MARK: - Header
                VStack{
                    HStack {
                        Text("Hiking")
                            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(LinearGradient(colors: [.colorGrayLight, .colorGrayMedium], startPoint: .top, endPoint: .bottom))
                        Spacer()
                         
                        Button{
                            isShowingSheet.toggle()
                        } label: {
                            CustomButtonView()
                        }
                        .sheet(isPresented: $isShowingSheet){
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium,.large])
                        }
                        
                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .italic()
                        .foregroundColor(.colorGrayMedium)
                }.padding(.horizontal, 40)
                
                 
                
                ZStack {
                    
                    CustomCircleView()
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(/*@START_MENU_TOKEN@*/.easeIn/*@END_MENU_TOKEN@*/, value: imageNumber)
                }
                // MARK: - Explore more
                HStack(alignment: .center){
                    Spacer()
                    Button{
                        changeImage()
                    } label: {
                        Text("Explore More")
                            .shadow(
                                color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/.opacity(0.25), radius: 0.25,
                                x: 1, y: 2)
                    }
                    .buttonStyle(GradientButton())
                    
                    Spacer()
                }
            }
            
        }.padding(20)
            .frame(height: 700)
    }
}

#Preview {
    CardView()
}
