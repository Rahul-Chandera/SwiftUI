//
//  DetailsView.swift
//  Stay Healthy
//
//  Created by Rahul on 06/06/19.
//  Copyright © 2019 DET. All rights reserved.
//

import SwiftUI

struct DetailsView : View {
  var title: String
  var image: String
  
  var body: some View {
    VStack() {
      Image("nature")
        .frame(height: 200)
        .edgesIgnoringSafeArea(.top)
        .overlay(Image("animals")
          .clipShape(Circle())
          .overlay(Circle().stroke(Color.white, lineWidth: 4))
          .shadow(radius: 10)
          .offset(y: 50))
      
      Text(title)
        .font(.title)
        .offset(y: 50)
      
      Spacer()
    }
  }
}

#if DEBUG
struct TipDetailsView_Previews : PreviewProvider {
    static var previews: some View {
      ForEach(["iPhone SE", "Iphone XR"].identified(by: \.self)) { deviceName in
        TipDetailsView(title: "This moment is inevitable", image: "tip3")
          .previewDevice(PreviewDevice(rawValue: deviceName))
          .previewDisplayName(deviceName)
      }
    }
}
#endif
