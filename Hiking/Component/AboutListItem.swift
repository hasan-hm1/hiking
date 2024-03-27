//
//  AboutListItem.swift
//  Hiking
//
//  Created by Hasan on 3/27/24.
//

import SwiftUI

struct AboutListItem: View {
     var labelText : String
     var labelIcon : String
     var labelBackgroundColor : Color
     var contentText: String? = nil
     var contentLink: String? = nil
     var contentLinkDestination: String? = nil
    
    var body: some View {
        LabeledContent{
            if contentText != nil {
                Text(contentText!)
                    .fontWeight(.heavy )
                    .foregroundColor(.primary)
            } else if (contentLink != nil && contentLinkDestination != nil){
                Link(destination: URL(string: contentLinkDestination!)!, label: {
                    Text(contentLink!)
                        .fontWeight(.heavy)
                        .foregroundColor(.pink)
                })
                
            } else{
                EmptyView()
            }
            
        }
    label: {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 8)
                    .frame(width: 30, height: 30)
                .foregroundColor(labelBackgroundColor)
                Image(systemName:labelIcon)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
            }
            Text(labelText)
                .fontWeight(.medium)
        }
        
    }
    }
}

#Preview {
    List {        
        AboutListItem(labelText: "Label", labelIcon:"square.and.arrow.up", labelBackgroundColor: .pink)
    }
}
