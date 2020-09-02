//
//  UpdateExpireStore.swift
//  Refrigerador
//
//  Created by Jesús  Fortuna on 19/04/2020.
//  Copyright © 2020 Jesús  Fortuna. All rights reserved.
//

import SwiftUI
import Combine

class UpdateExpireStore : ObservableObject {
    @Published var updates : [Update] = updateData
}

