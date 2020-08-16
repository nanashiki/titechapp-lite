//
//  EventRow.swift
//  TitechAppLite
//
//  Created by nanashiki on 2020/08/16.
//  Copyright © 2020 nanashiki. All rights reserved.
//

import SwiftUI

struct EventRow: View {
    var body: some View {
        HStack(spacing: 0) {
            Rectangle()
                .foregroundColor(Color("main"))
                .frame(width: 5)
            VStack(alignment: .leading, spacing: 24) {
                Text("00:00")
                    .font(.system(size: 13))
                    .foregroundColor(Color("textMain"))
                Text("00:00")
                    .font(.system(size: 13))
                    .foregroundColor(Color("textSub"))
            }
            .padding(.vertical, 24)
            .padding(.leading, 16)
            
            VStack(alignment: .leading, spacing: 24) {
                Text("電気的モデリングとシミュレーション hogehoge")
                    .lineLimit(1)
                    .font(Font.system(size: 15))
                    .foregroundColor(Color("textMain"))
                Text("RC回路シミュレーション")
                    .lineLimit(1)
                    .font(.system(size: 13))
                    .foregroundColor(Color("textSub"))
            }
            .padding(.vertical, 24)
            .padding(.leading, 16)

            Spacer()

            Text("W833,G114")
                .lineLimit(2)
                .font(.system(size: 15))
                .foregroundColor(Color("main"))
                .frame(width: 44.0)
                .padding(.trailing, 16)
        }
    }
}

struct EventRow_Previews: PreviewProvider {
    static var previews: some View {
        EventRow()
    }
}
