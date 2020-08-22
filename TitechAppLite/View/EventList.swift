//
//  EventList.swift
//  TitechAppLite
//
//  Created by nanashiki on 2020/08/16.
//  Copyright © 2020 nanashiki. All rights reserved.
//

import SwiftUI

struct EventList: View {
    var body: some View {
        NavigationView {
            List(0..<10) { _ in
                EventRow()
                    .padding(.horizontal, -20)
                    .padding(.vertical, -8)
            }
            .navigationBarTitle(Text("スケジュール"), displayMode: .inline)
        }
    }
}

struct EventList_Previews: PreviewProvider {
    static var previews: some View {
        EventList()
    }
}
