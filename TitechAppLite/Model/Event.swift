//
//  Event.swift
//  TitechAppLite
//
//  Created by nanashiki on 2020/08/22.
//  Copyright © 2020 nanashiki. All rights reserved.
//

import Foundation

struct Event: Identifiable {
    let id: String
    let title: String
    let description: String
    let startAt: HourMinute
    let endAt: HourMinute
    let location: String
}
