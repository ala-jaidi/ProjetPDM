//
//  QueryTag.swift
//  miniTiktok
//
//  Created by Bechir Kefi on 3/11/2023.
//

import SwiftUI

struct QueryTag: View {
    var query: Query
    var isSelected: Bool
    var body: some View {
        Text(query.rawValue)
            .font(.caption)
            .bold()
            .foregroundColor(isSelected ? .white : .gray)
            .padding(10)
            .background(isSelected ? Color("AccentColor") : Color("SecondaryColor"))

            .cornerRadius(10)
    }
}

struct QueryTag_Previews: PreviewProvider {
    static var previews: some View {
        QueryTag(query: Query.carbon, isSelected: true)
    }
}
