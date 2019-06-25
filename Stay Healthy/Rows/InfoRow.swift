//
//  InfoRow.swift
//  Stay Healthy
//
//  Created by Rahul on 07/06/19.
//  Copyright © 2019 DET. All rights reserved.
//

import SwiftUI

struct InfoRow : View {
  var title: String
  var image: String
  
    var body: some View {
      VStack(alignment: .center, spacing: 12) {
        Spacer()
        Image(image)
        Text(title).padding(.all, 8).frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        Spacer()
        }
        .background(Color(red: 0.95, green: 0.95, blue: 1.0))
        .cornerRadius(16)
        .padding(.all, 6)
        .frame(height: 180)
    }
}

#if DEBUG
struct InfoRow_Previews : PreviewProvider {
    static var previews: some View {
      Group {
        InfoRow(title: "Personal Info", image: "yoga")
        InfoRow(title: "Weight", image: "diets")
      }
      .previewLayout(.fixed(width: 160, height: 180))
    }
}
#endif
