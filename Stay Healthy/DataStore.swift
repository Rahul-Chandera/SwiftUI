//
//  DataStore.swift
//  Stay Healthy
//
//  Created by Rahul on 06/06/19.
//  Copyright © 2019 DET. All rights reserved.
//

import SwiftUI

let motivations: [MotivationModel] = [
  MotivationModel(id: 0, title: "When you wake up", imageName: "tip1"),
  MotivationModel(id: 1, title: "Say thanks", imageName: "tip2"),
  MotivationModel(id: 2, title: "This moment is inevitable", imageName: "tip3"),
  MotivationModel(id: 3, title: "All rules are my rules", imageName: "tip4")
]

let supports: [SupportModel] = [
  SupportModel(id: 0, title: "Diets", icon: "diets"),
  SupportModel(id: 1, title: "Exercises", icon: "exercises"),
  SupportModel(id: 2, title: "Yoga", icon: "yoga")
]

struct MotivationModel: Identifiable {
  var id: Int
  var title: String
  var imageName: String
}

struct SupportModel: Identifiable {
  var id: Int
  var title: String
  var icon: String
}

