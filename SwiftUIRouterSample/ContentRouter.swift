//
//  ContentRouter.swift
//  SwiftUIRouterSample
//
//  Created by Yusuke Hasegawa on 2021/02/13.
//

import SwiftUI

extension Identifiable where Self: Hashable {
    typealias ID = Self
    var id: Self { self }
}

enum ContentRouter: View, Hashable, Identifiable {
    
    case first
    case second(text: String)
    
    var body: some View {
        switch self {
        case .first: return AnyView(FirstView())
        case .second(let text): return AnyView(SecondView(text: text))
        }
    }
    
}
