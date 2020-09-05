//
//  DateGroupEvent.swift
//  TitechAppLite
//
//  Created by nanashiki on 2020/08/22.
//  Copyright © 2020 nanashiki. All rights reserved.
//

import Foundation

struct DateGroupEvent {
    let dateLabel: String
    let events: [Event]
}

extension DateGroupEvent: Identifiable {
    var id: String {
        dateLabel
    }
}
