//
//  GridView.swift
//  Stay Healthy
//
//  Created by Rahul on 06/06/19.
//  Copyright © 2019 DET. All rights reserved.
//

import SwiftUI

struct GridView : View {
  var body: some View {
    ScrollView(showsHorizontalIndicator: false) {
      HStack(alignment: .top, spacing: 4) {
        ForEach(motivations) { model in
          MotivationRow(model: model)
          // NavigationButton(destination: DetailsView(tip: tipModel)) {
          //   TipsRow(model: tipModel)
          // }
        }
      }
    }
    .frame(height: 160)
  }
}

#if DEBUG
struct GridView_Previews : PreviewProvider {
  static var previews: some View {
    GridView()
  }
}
#endif
