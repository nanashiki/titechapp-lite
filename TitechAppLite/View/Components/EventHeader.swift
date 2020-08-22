//
//  EventHeader.swift
//  TitechAppLite
//
//  Created by nanashiki on 2020/08/22.
//  Copyright © 2020 nanashiki. All rights reserved.
//

import SwiftUI

struct EventHeader: View {
    var body: some View {
        HStack {
            Rectangle()
                .foregroundColor(Color("grayMain"))
                .frame(width: 5)
            Text("9月10日 木曜日")
                .foregroundColor(Color("grayMain"))
                .font(Font.system(size: 13))
            Spacer()
        }
        .background(Color("backgroundMain"))
        .frame(height: 55.0)
    }
}

struct EventHeader_Previews: PreviewProvider {
    static var previews: some View {
        EventHeader()
    }
}
