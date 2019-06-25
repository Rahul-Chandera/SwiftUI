//
//  SectionText.swift
//  Stay Healthy
//
//  Created by Rahul on 07/06/19.
//  Copyright © 2019 DET. All rights reserved.
//

import SwiftUI

struct SectionText : View {
  var title: String
  
    var body: some View {
      Text(title)
        .font(.system(size: 18))
        .fontWeight(.bold)
        .color(.gray)
    }
}

#if DEBUG
struct SectionText_Previews : PreviewProvider {
    static var previews: some View {
        SectionText(title: "")
    }
}
#endif
