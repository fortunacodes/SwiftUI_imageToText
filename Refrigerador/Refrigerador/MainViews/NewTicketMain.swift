//
//  NewTicket.swift
//  Refrigerador
//
//  Created by Jesús  Fortuna on 17/04/2020.
//  Copyright © 2020 Jesús  Fortuna. All rights reserved.
//

import SwiftUI

struct NewTicketMain: View {
    
    var body: some View {
        ZStack {
            RectangleGame()
            

            VStack (spacing: 60){
                ScannerCards(imagen: "pictures", titulo: "Elegir Imagén")
                    .offset(x: -60, y: 0)
                
                ScannerCards(imagen: "camera", titulo: "Nueva Imagén")
                .offset(x: 60, y: 0)
                
            }
            
        }
                        .animation(.spring(response: 0.6, dampingFraction: 0.8, blendDuration: 0))

    }
}

struct NewTicket_Previews: PreviewProvider {
    static var previews: some View {
        NewTicketMain()
    }
}
