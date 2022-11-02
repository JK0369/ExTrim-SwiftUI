//
//  ContentView.swift
//  ExTrim
//
//  Created by 김종권 on 2022/11/02.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      Circle()
        .trim(from: 0, to: 0.7)
      myRectangle
        .trim(from: 0, to: 0.3)
    }
  }
  
  var myRectangle: Path {
    Path { path in
      path.move(to: CGPoint(x: 100, y: 100))
      path.addLine(to: CGPoint(x: 200, y: 100))
      path.addLine(to: CGPoint(x: 200, y: 200))
      path.addLine(to: CGPoint(x: 100, y: 200))
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
