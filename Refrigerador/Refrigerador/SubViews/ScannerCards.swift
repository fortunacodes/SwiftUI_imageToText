//
//  ScannerCards.swift
//  Refrigerador
//
//  Created by Jesús  Fortuna on 17/04/2020.
//  Copyright © 2020 Jesús  Fortuna. All rights reserved.
//

import SwiftUI

struct ScannerCards: View {
    
    var imagen : String
    var titulo : String
    
    var body: some View {
        ZStack {
            
            Rectangle()
                .frame(minWidth: 210, idealWidth: 220, maxWidth: 240, minHeight: 70, idealHeight: 80, maxHeight: 90, alignment: .top)
                .foregroundColor(Color(#colorLiteral(red: 0.9803921569, green: 0.9803921569, blue: 0.9803921569, alpha: 1)))
                .cornerRadius(20)
                .shadow(color: Color.black.opacity(0.4), radius: 5, x: 0, y: 3)
            
            
            VStack  {
                Image(imagen)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 84, height: 84, alignment: .top)
                    .offset(x: 0, y: -40)
                
                Text(titulo)
                    .font(.body)
                    .offset(x: 0, y: -30)
                    .frame(width: 220)
                
            }
            //
            //
            //
            //                Text("Hola")
        }
        .frame(minWidth: 170, idealWidth: 180, maxWidth: 200, minHeight: 70, idealHeight: 100, maxHeight: 110)

        
    }
}

struct ScannerCards_Previews: PreviewProvider {
    static var previews: some View {
        ScannerCards(imagen: "camera", titulo: "Elegir imagén")
    }
}
