//
//  MotivationRow.swift
//  Stay Healthy
//
//  Created by Rahul on 06/06/19.
//  Copyright © 2019 DET. All rights reserved.
//

import SwiftUI

struct MotivationRow : View {
  var model: MotivationModel
  
    var body: some View {
      Image(model.imageName)
        .frame(width: 100.0, height: 140.0)
        .cornerRadius(14)
        .shadow(radius: 4)
        .padding(.all, 6)
        .overlay(
          Text(model.title)
            .font(.caption)
            .color(.white)
            .lineLimit(0)
            .offset(x: 12, y: -12),
          alignment: .bottomLeading
      )
    }
}

#if DEBUG
struct Motivation_Previews : PreviewProvider {
    static var previews: some View {
      Group {
        MotivationRow(model: MotivationModel(id: 0, title: "When you wake up", imageName: "tip1"))
        MotivationRow(model: MotivationModel(id: 0, title: "Say thanks", imageName: "tip3"))
      }
      .previewLayout(.fixed(width: 120, height: 160))
    }
}
#endif
