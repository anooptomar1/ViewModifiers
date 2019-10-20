//
//  CustoModifiers01.swift
//  ViewModifiers
//
//  Created by Luc Derosne on 20/10/2019.
//  Copyright © 2019 Luc Derosne. All rights reserved.
//

import SwiftUI

struct ContentView1: View {
    var body: some View {
        Text("OpenCasseCroute")
        .titleStyle()
    }
}

struct TitleModifier: ViewModifier      {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(.blue)
            .padding()
            .background(Color.red)
        .clipShape(RoundedRectangle(cornerRadius: 30))
    }
}

extension View {
    func titleStyle() -> some View {
        self.modifier(TitleModifier())
    }
}


struct ContentView_Previews1: PreviewProvider {
    static var previews: some View {
        ContentView1()
    }
}
