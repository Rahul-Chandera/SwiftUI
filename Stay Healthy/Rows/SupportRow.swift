//
//  SupportRow.swift
//  Stay Healthy
//
//  Created by Rahul on 06/06/19.
//  Copyright © 2019 DET. All rights reserved.
//

import SwiftUI

struct SupportRow : View {
  var title: String
  var icon: String
  
  var body: some View {
    HStack(spacing: 16) {
      Image(icon).offset(x: 6)
      Text(title).font(.title).multilineTextAlignment(.leading).frame(height: 60)
      Spacer()
      }
      .background(Color(red: 0.97, green: 0.98, blue: 0.99))
      .cornerRadius(10)
      .padding()
  }
}

#if DEBUG
struct SupportRow_Previews : PreviewProvider {
    static var previews: some View {
      SupportRow(title: "Diets", icon: "diets")
      .previewLayout(.fixed(width: 320, height: 60))
    }
}
#endif
