//
//  EventListViewModel.swift
//  TitechAppLite
//
//  Created by nanashiki on 2020/08/22.
//  Copyright © 2020 nanashiki. All rights reserved.
//

import Combine
import Foundation

class EventListViewModel: ObservableObject {
    @Published var groupEvents: [DateGroupEvent] = []

    func appear() {
        groupEvents = [
            DateGroupEvent(
                dateLabel: "9月10日 木曜日",
                events: [
                    Event(
                        id: UUID().uuidString,
                        title: "電気的モデリングとシミュレーション",
                        description: "RC回路シミュレーション",
                        startAt: HourMinute(hour: 9, minute: 0),
                        endAt: HourMinute(hour: 10, minute: 30),
                        location: "W833,G114"
                    ),
                    Event(
                        id: UUID().uuidString,
                        title: "情報基盤・データ活用概論",
                        description: "講義説明（＋インストールガイダンス資料）",
                        startAt: HourMinute(hour: 9, minute: 0),
                        endAt: HourMinute(hour: 10, minute: 30),
                        location: "W833"
                    )
                ]
            ),
            DateGroupEvent(
                dateLabel: "9月11日 金曜日",
                events: [
                    Event(
                        id: UUID().uuidString,
                        title: "情報基盤・データ活用概論",
                        description: "講義説明（＋インストールガイダンス資料）",
                        startAt: HourMinute(hour: 9, minute: 0),
                        endAt: HourMinute(hour: 10, minute: 30),
                        location: "W833"
                    )
                ]
            ),
            DateGroupEvent(
                dateLabel: "9月12日 土曜日",
                events: []
            ),
            DateGroupEvent(
                dateLabel: "9月13日 日曜日",
                events: []
            )
        ]
    }
}
