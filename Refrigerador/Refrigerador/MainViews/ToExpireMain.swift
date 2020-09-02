//
//  toExpireMain.swift
//  Refrigerador
//
//  Created by Jesús  Fortuna on 20/04/2020.
//  Copyright © 2020 Jesús  Fortuna. All rights reserved.
//

import SwiftUI

struct toExpireMain: View {
    var body: some View {
        CardsFoodToExpire(image: "beef", title: "Solomillo", date: "Enero 19", showBig: false)
    }
}

struct toExpireMain_Previews: PreviewProvider {
    static var previews: some View {
        toExpireMain()
    }
}
