//
//  ContentView.swift
//  Stay Healthy
//
//  Created by Rahul on 06/06/19.
//  Copyright © 2019 DET. All rights reserved.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      List {
        SectionText(title: "Motivation")
        GridView()
        
        SectionText(title: "Support")
        ForEach(supports) { model in
//          NavigationButton(destination: TipDetailsView(title: model.title, image: model.icon)) {
               SupportRow(title: model.title, icon: model.icon)
//          }
        }
        
        SectionText(title: "Info")
        HStack(alignment: .center) {
          InfoRow(title: "BMP", image: "bpm")
          InfoRow(title: "Weight", image: "weight")
        }
        HStack(alignment: .center) {
          InfoRow(title: "Sleep", image: "sleep")
          InfoRow(title: "Steps", image: "steps")
        }
      }
      .navigationBarTitle(Text("Stay Healthy"))
    }
  }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
#endif



