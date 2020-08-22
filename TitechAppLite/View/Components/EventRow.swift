//
//  EventRow.swift
//  TitechAppLite
//
//  Created by nanashiki on 2020/08/16.
//  Copyright © 2020 nanashiki. All rights reserved.
//

import SwiftUI

struct EventRow: View {
    let event: Event

    var body: some View {
        HStack(spacing: 0) {
            Rectangle()
                .foregroundColor(Color("main"))
                .frame(width: 5)
            VStack(alignment: .leading, spacing: 24) {
                Text("\(String(format: "%02d", event.startAt.hour)):\(String(format: "%02d", event.startAt.minute))")
                    .font(.system(size: 13))
                    .foregroundColor(Color("textMain"))
                Text("\(String(format: "%02d", event.endAt.hour)):\(String(format: "%02d", event.endAt.minute))")
                    .font(.system(size: 13))
                    .foregroundColor(Color("textSub"))
            }
            .padding(.vertical, 24)
            .padding(.leading, 16)
            
            VStack(alignment: .leading, spacing: 24) {
                Text(event.title)
                    .lineLimit(1)
                    .font(Font.system(size: 15))
                    .foregroundColor(Color("textMain"))
                Text(event.description)
                    .lineLimit(1)
                    .font(.system(size: 13))
                    .foregroundColor(Color("textSub"))
            }
            .padding(.vertical, 24)
            .padding(.leading, 16)

            Spacer()

            Text(event.location)
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
        EventRow(
            event: Event(
                id: UUID().uuidString,
                title: "電気的モデリングとシミュレーション",
                description: "RC回路シミュレーション",
                startAt: HourMinute(hour: 9, minute: 0),
                endAt: HourMinute(hour: 10, minute: 30),
                location: "W833,G114"
            )
        )
    }
}
