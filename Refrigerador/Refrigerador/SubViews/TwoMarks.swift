//
//  TwoMarks.swift
//  Refrigerador
//
//  Created by Jesús  Fortuna on 17/04/2020.
//  Copyright © 2020 Jesús  Fortuna. All rights reserved.
//

import SwiftUI

struct TwoMarks: View {
    var body: some View {
        VStack {
            
            
            Spacer()
            HStack {
                ZStack{
                    
                    Rectangle()
                        .foregroundColor(Color.yellow)
                        .frame(width: 50, height: 200, alignment: .leading)
                        .cornerRadius(20)
                        .offset(x:-40, y: -40)
                    
                    
                }
                Spacer()
                
            }
            HStack {
                Spacer()
                ZStack{
                    
                    Rectangle()
                        .foregroundColor(Color.yellow)
                        .frame(width: 50, height: 200, alignment: .bottomTrailing)
                        .cornerRadius(20)
                        .offset(x:40, y: 0)
                    
                    
                }
                
            }
        }
    }
}


struct TwoMarks_Previews: PreviewProvider {
    static var previews: some View {
        TwoMarks()
    }
}
