//
//  ContentView.swift
//  ViewModifiers
//
//  Created by Luc Derosne on 20/10/2019.
//  Copyright © 2019 Luc Derosne. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Mon TITRE").BigTitle()
            
            GridStack(rows: 5, columns: 3) { row, column in
                HStack {
                    Text("(")
                    Image(systemName: "")
                    Text("L\(row), C\(column)")
                    Text(")")
                }
            }
            
            Spacer()
        }
    }
}

struct BigTitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        return content
            .font(.largeTitle)
            .foregroundColor(.purple)
    }
}

extension View {
    func BigTitle() -> some View {
        self.modifier(BigTitleModifier())
    }
}

struct GridStack<Content: View>: View {
    let rows: Int
    let columns: Int
    let content: (Int, Int) -> Content
    
    var body: some View {
        VStack {
            ForEach(0 ..< self.rows) { row in
                HStack {
                    ForEach(0 ..< self.columns) { column in
                        self.content(row, column)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
