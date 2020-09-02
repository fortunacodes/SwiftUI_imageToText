//
//  UpdateDetailToExpire.swift
//  Refrigerador
//
//  Created by Jesús  Fortuna on 19/04/2020.
//  Copyright © 2020 Jesús  Fortuna. All rights reserved.
//

import SwiftUI

struct UpdateDetailToExpire: View {
    var update : Update = updateData[0]

    var body: some View {
                VStack {
//                    Image(update.image)
//                        .resizable()
//                        .aspectRatio(contentMode: .fit)
//                        .frame(maxWidth: .infinity)
//
                    Text(update.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    Text(update.date)
                        .frame(maxWidth: .infinity, alignment: .leading)

                }

        
    }
}

struct UpdateDetailToExpire_Previews: PreviewProvider {
    static var previews: some View {
        UpdateDetailToExpire()
    }
}
