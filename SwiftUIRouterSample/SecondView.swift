//
//  SecondView.swift
//  SwiftUIRouterSample
//
//  Created by Yusuke Hasegawa on 2021/02/13.
//

import SwiftUI

struct SecondView: View {
    
    var text: String
    
    var body: some View {
        Text("Hello, \(self.text)!")
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView(text: "World")
    }
}
