//
//  SettingsvIEW.swift
//  Hiking
//
//  Created by Hasan on 3/27/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            // MARK: - Header
            Section {
                HStack{
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 70))
                    VStack(spacing: -10.0) {
                        Text("Hiking")
                            .font(.system(size: 58))
                        .fontWeight(.black)
                        Text("Editor's Choice")
                            .fontWeight(.medium)
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 70))
                    Spacer()
                }
                .foregroundStyle(LinearGradient(colors: [.colorGreenLight, .colorGreenMedium, .colorGreenDark], startPoint: .top, endPoint: .bottom))
                .padding(.top, 10)
                VStack(spacing:8){
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    Text("The hike which looks gorgeous in photos but is even better once you are aactually there. The hike that you hope to do again someday.\nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    Text("Dust of the boots! It's time for a walk")
                        .fontWeight(.heavy)
                        .foregroundColor(.colorGreenMedium)
                }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
                .padding(.bottom, 10)
                
            }
            .listRowSeparator(.hidden)
          
            // MARK: - Icons
            
            // MARK: - About
            Section(
                header: Text("About the app"),
                footer: HStack{
                    Spacer()
                    Text("Copyright © All rights reserved")
                    Spacer()
                }){
                    AboutListItem(labelText: "Application", labelIcon: "apps.iphone", labelBackgroundColor: .blue, contentText: "HIKE")
                    AboutListItem(labelText: "Compatibility", labelIcon: "info.circle", labelBackgroundColor: .red, contentText: "iOS,iPadOS")
                    AboutListItem(labelText: "Technology", labelIcon: "swift", labelBackgroundColor: .orange, contentText: "Swift")
                    AboutListItem(labelText: "Version", labelIcon: "gear", labelBackgroundColor: .purple, contentText: "1.0")
                    AboutListItem(labelText: "Developer", labelIcon: "ellipsis.curlybraces", labelBackgroundColor: .mint , contentText: "Hasan")
                    AboutListItem(labelText: "Designer", labelIcon: "paintpalette", labelBackgroundColor: .pink, contentText: "Robert")
                    AboutListItem(labelText: "Website", labelIcon: "globe", labelBackgroundColor: .indigo, contentLink:"Apple", contentLinkDestination: "https://www.apple.com")
                }

        } // List
        
    }
}

#Preview {
    SettingsView()
}
