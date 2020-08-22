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
            List {
                ForEach(0..<1000) { _ in
                    Section(
                        header: EventHeader().listRowInsets(EdgeInsets())
                    ) {
                        ForEach(0..<2) { _ in
                            EventRow()
                                .listRowInsets(EdgeInsets())
                        }
                    }
                }
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
