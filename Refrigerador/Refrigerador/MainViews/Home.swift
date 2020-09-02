//
//  Home.swift
//  Refrigerador
//
//  Created by Jesús  Fortuna on 14/04/2020.
//  Copyright © 2020 Jesús  Fortuna. All rights reserved.
//

import SwiftUI

struct Home: View {
    
    @State var showTicketScreen = false
    @State var showToExpireScreen = false

    var body: some View {
        
        ZStack{
            
            Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                ZStack{
                    Rectangle()
                        .frame(width: screen.width, height: screen.height/2)
                        .foregroundColor(Color.yellow)
                        .cornerRadius(20)
                        .offset(x: 0, y:  -(screen.height/2) )
                    
                    
                    
                }
            }
            
            TwoMarks()
            
            
            VStack {
                Spacer()

                Header()
                

                VStack {
                    

                    HStack (spacing: 40){
                        VStack (spacing: 40){
                            MainCards(Imagen: "receipt", Titulo: "Gastos", Subtitulo: "122.00€ este mes")
                            MainCards(Imagen: "cooking", Titulo: "A caducar", Subtitulo: "3 Articulos")
                                .onTapGesture {
                                    self.showToExpireScreen.toggle()
                            }
                            
                        }.padding(.top, 20)
                        
                        
                        VStack (spacing: 40){
                            MainCards(Imagen: "cart", Titulo: "Cesta", Subtitulo: "9 Articulos")
                            MainCards(Imagen: "adddocument", Titulo: "Escanear compra", Subtitulo: "21 Compras")
                                .onTapGesture {
                                    self.showTicketScreen.toggle()
                            }
                            
                        }.padding(.top, 40)
                    }
                    
                    
                }
                Spacer()

            }
            .padding(.horizontal,20)
            .frame(width: screen.width, height: screen.height)
            .edgesIgnoringSafeArea(.all)
            
            
            
            if showTicketScreen{
                Color.white
                    .edgesIgnoringSafeArea(.all)
                
                NewTicketMain()
                    .transition(.move(edge: .trailing))
                    .animation(.spring(response: 0.6, dampingFraction: 0.8, blendDuration: 0))
                .statusBar(hidden: true)


                //Marca negra con la X
                VStack {
                    HStack {
                        Spacer()
                        
                        Image(systemName: "xmark")
                            .frame(width: 36, height: 36)
                            .foregroundColor(.white)
                            .background(Color.black)
                            .clipShape(Circle())
                    }
                    Spacer()
                }
                .offset(x: -26, y: 16)
                .transition(.move(edge: .trailing))
                .animation(.spring(response: 0.6, dampingFraction: 0.8, blendDuration: 0))
                .onTapGesture {
                    self.showTicketScreen = false
                    
                }

            }
            
            if showToExpireScreen{
                
                
                toExpireMain()
                .statusBar(hidden: true)

                //Marca negra con la X
                VStack {
                    HStack {
                        Spacer()
                        
                        Image(systemName: "xmark")
                            .frame(width: 36, height: 36)
                            .foregroundColor(.white)
                            .background(Color.black)
                            .clipShape(Circle())
                    }
                    Spacer()
                }
                .offset(x: -26, y: 16)
                .transition(.move(edge: .trailing))
                .animation(.spring(response: 0.6, dampingFraction: 0.8, blendDuration: 0))
                .onTapGesture {
                    self.showToExpireScreen = false
                    
                }
                
            }
            
            
            
        }
            
    }
}


struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

let screen = UIScreen.main.bounds // Recupera el tamño del dispositivo



struct Header: View {
    var body: some View {
        VStack {
            HStack (alignment: .top){
                
                VStack (alignment: .leading) {
                    Text("Hey Jesús")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    Text("Bienvenido, disfruta tú control")
                        .font(.callout)
                        .foregroundColor(Color.black.opacity(0.5))
                }
                
                
                Spacer()
                
                
                ZStack {
                    Rectangle()
                        .foregroundColor(Color.white)
                        .frame(width: 64, height: 64, alignment: .top)
                        .cornerRadius(10)
                    
                    Image("Rad")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 64, height: 64, alignment: .top)
                        
                        .offset(x: 0, y: 0)
                    
                }
                
            }
            .padding(.top, 20)
            
            ZStack (alignment: .leading){
                Rectangle()
                    .foregroundColor(Color.white)
                    .frame(width: screen.width - 50, height: 35, alignment: .leading)
                    .cornerRadius(20)
                    .shadow(radius: 20)
                
                Text("Carne")
                    .font(.headline)
                    .foregroundColor(Color.black.opacity(0.4))
                    .padding(.horizontal, 20)
                
            }
            
        }
    }
}
