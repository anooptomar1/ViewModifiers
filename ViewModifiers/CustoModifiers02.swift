//
//  CustoModifiers02.swift
//  ViewModifiers
//
//  Created by Luc Derosne on 20/10/2019.
//  Copyright © 2019 Luc Derosne. All rights reserved.
//

import SwiftUI

struct CustoModifiers02: View {
    var body: some View {
        //Text("GROS").modifier(BiggerModifier())
        // ModifiedContent(content: Text("GROS"), modifier: BiggerModifier())
        Text("GROS").bigger()
    }
}

struct PlusGrosModifier: ViewModifier {
    func body(content: Content) -> some View {
        return content.scaleEffect(2)
    }
}

extension View {
    func bigger() -> some View {
        self.modifier(PlusGrosModifier())
    }
}

struct CustoModifiers02_Previews: PreviewProvider {
    static var previews: some View {
        CustoModifiers02()
    }
}
