//
//  RectangleGame.swift
//  Refrigerador
//
//  Created by Jesús  Fortuna on 17/04/2020.
//  Copyright © 2020 Jesús  Fortuna. All rights reserved.
//

import SwiftUI


struct RectangleGame: View {
    
    var body: some View {
        VStack {
            
            HStack {
                
                Rectangle()
                    .foregroundColor(Color.yellow)
                    .frame(width: 200, height: 400, alignment: .leading)
                    .cornerRadius(100)
                    .rotationEffect(.degrees(45))
                    .offset(x:-20, y: -230)
                
                
                
                Spacer()
                
                
                Rectangle()
                    .foregroundColor(Color.yellow)
                    .frame(width: 200, height: 200, alignment: .trailing)
                    .cornerRadius(80)
                    .rotationEffect(.degrees(15))
                    .offset(x: 100, y: -150)
            }
            
            Spacer()
            
            
            HStack {
                
                Rectangle()
                    .foregroundColor(Color.yellow)
                    .frame(width: 200, height: 200, alignment: .trailing)
                    .cornerRadius(80)
                    .rotationEffect(.degrees(15))
                    .offset(x: -100, y: 150)
                
                
                
                Spacer()
                
                
                Rectangle()
                    .foregroundColor(Color.yellow)
                    .frame(width: 200, height: 400, alignment: .leading)
                    .cornerRadius(100)
                    .rotationEffect(.degrees(45))
                    .offset(x:20, y: 230)
                
            }
        }.edgesIgnoringSafeArea(.all)
            
        
        
    }
}


struct RectangleGame_Previews: PreviewProvider {
    static var previews: some View {
        RectangleGame()
    }
}
