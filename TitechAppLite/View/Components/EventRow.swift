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
                Text(timeString(event.startAt))
                    .font(.system(size: 13))
                    .foregroundColor(Color("textMain"))
                Text(timeString(event.endAt))
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
    
    func timeString(_ date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX")
        dateFormatter.timeZone = TimeZone(identifier: "Asia/Tokyo")
        dateFormatter.dateFormat = "HH:mm"
        return dateFormatter.string(from: date)
    }
}

struct EventRow_Previews: PreviewProvider {
    static var previews: some View {
        EventRow(
            event: Event(
                id: UUID().uuidString,
                title: "電気的モデリングとシミュレーション",
                description: "RC回路シミュレーション",
                startAt: Date(timeIntervalSince1970: 0),
                endAt: Date(timeIntervalSince1970: 5400),
                location: "W833,G114"
            )
        )
    }
}
