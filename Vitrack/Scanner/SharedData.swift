//
//  SharedData.swift
//  Vitrack
//
//  Created by Ricardo Bucio on 11/12/24.
//

import Foundation
import SwiftUI

class sharedData: ObservableObject {
    @Published var identifiedFood: String = ""
    @Published var selectedDate: Date = Date()
    @Published var events: [Event] = [] // Lista de eventos
}
