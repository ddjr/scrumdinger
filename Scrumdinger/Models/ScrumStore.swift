//
//  ScrumStore.swift
//  Scrumdinger
//
//  Created by David Daly on 7/5/23.
//

import Foundation

class ScrumStore: ObservableObject {
    @Published var scrums: [DailyScrum] = []
}
