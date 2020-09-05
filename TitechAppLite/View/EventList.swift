//
//  EventList.swift
//  TitechAppLite
//
//  Created by nanashiki on 2020/08/16.
//  Copyright © 2020 nanashiki. All rights reserved.
//

import SwiftUI

struct EventList: View {
    @ObservedObject var viewModel = EventListViewModel()

    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.groupEvents) { groupEvent in
                    Section(
                        header: EventHeader(dateLabel: groupEvent.dateLabel)
                    ) {
                        ForEach(groupEvent.events) { event in
                            EventRow(event: event)
                        }
                    }
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationBarTitle(Text("スケジュール"), displayMode: .inline)
        }
        .onAppear {
            self.viewModel.appear()
        }
    }
}

struct EventList_Previews: PreviewProvider {
    static var previews: some View {
        EventList()
    }
}
