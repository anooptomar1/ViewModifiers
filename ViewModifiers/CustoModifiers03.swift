//
//  CustoModifiers03.swift
//  ViewModifiers
//
//  Created by Luc Derosne on 20/10/2019.
//  Copyright © 2019 Luc Derosne. All rights reserved.
//

import SwiftUI

struct CustoModifiers03: View {
    var body: some View {
        Image("pear").nsfw()
        //Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
    }
}

//struct NSFW: ViewModifier {
//  func body(content: Content) -> some View {
//    ZStack(alignment: .center, content: {
//        content.layoutPriority(1)
//            .blur(radius: 30).clipped()
//        VStack {
//            Image(systemName: "eye.slash.fill").foregroundColor(.white)
//            Text("NSFW").font(.caption).bold().foregroundColor(.white)
//        }
//    })
//  }
//}

struct NSFW: ViewModifier {
    @State var isHide: Bool = true
    
    func body(content: Content) -> some View {
        ZStack(alignment: .center, content: {
            if isHide {
                content.layoutPriority(1)
                    .blur(radius: 30).clipped()
                VStack {
                    Image(systemName: "eye.slash.fill").foregroundColor(.white)
                    Text("NSFW").font(.caption).bold().foregroundColor(.white)
                }
            } else {
                content
            }
        }).onTapGesture {
            withAnimation {
                self.isHide = !self.isHide
            }
        }
    }
}

extension Image {
    func nsfw() -> some View {
        self.modifier(NSFW())
    }
}

struct CustoModifiers03_Previews: PreviewProvider {
    static var previews: some View {
        CustoModifiers03()
    }
}
