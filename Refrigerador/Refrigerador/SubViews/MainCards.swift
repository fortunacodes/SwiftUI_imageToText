//
//  MainCards.swift
//  Refrigerador
//
//  Created by Jesús  Fortuna on 14/04/2020.
//  Copyright © 2020 Jesús  Fortuna. All rights reserved.
//

import SwiftUI

struct MainCards: View {
    var Imagen: String
    var Titulo: String
    var Subtitulo: String
    
    var body: some View {
        VStack{
            
            ZStack {
                Rectangle()
                    .cornerRadius(20)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 5)
                
                
                VStack{
                    
                    
                    
                    
                    
                    Image(Imagen)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 160, height: 160)
                    .cornerRadius(20)

                    
                    
                    
                    
                    Text(Titulo)
                        .font(.system(size: 18, weight: .medium, design: .default))
                        .multilineTextAlignment(.center)
                    
                    
                    Text(Subtitulo)
                        .font(.subheadline)
                        .frame(maxWidth : .infinity)
                        .padding(.top, 10)
                    
                    
                    
                    
                    
                    
                    Spacer()
                    
                    
                }
                
                
            }
            
        }
        .frame(minWidth: 140, idealWidth: 170, maxWidth: 180, minHeight: 190, idealHeight: 230, maxHeight: 240, alignment: .top)
        
        
    }
}

struct MainCards_Previews: PreviewProvider {
    static var previews: some View {
        MainCards(Imagen: "adddocument", Titulo: "Gastos", Subtitulo: "122.54€ este mes")
    }
}
