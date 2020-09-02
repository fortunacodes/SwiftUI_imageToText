//
//  CardsFoodToExpire.swift
//  Refrigerador
//
//  Created by Jesús  Fortuna on 20/04/2020.
//  Copyright © 2020 Jesús  Fortuna. All rights reserved.
//

import SwiftUI

struct CardsFoodToExpire: View {
    var image : String
    var title : String
    var date : String
    @State var showBig : Bool
    @State var viewState = CGSize.zero
    
    var dateFormatter : DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
    @State var dateData = Date()
    
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    
                    ZStack {
                        
                        Rectangle()
                            .foregroundColor(Color.yellow)
                            .frame(width: 80, height: 30)
                            .cornerRadius(20)
                            .offset(y: 30)
                        .shadow(color: Color.yellow, radius: 10, x: 5, y: 5)
                        
                        Image(image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 64, height: 64)
                        
                    }
                    
                    VStack(alignment: .leading, spacing: 8.0) {
                        Text(title)
                            .font(.system(size: 20, weight: .bold))
                        
                        
                        Text(date)
                            .font(.subheadline)
                            .foregroundColor(.red)
                        
                    }.padding(.leading,20)
                }
                .padding(.vertical,8)
            }
            .blur(radius: showBig ? 10 : 0)
                
            .frame(width: 200, height: 80, alignment: .leading)
            .onTapGesture {
                self.showBig.toggle()
            }
            
            if showBig{
                
                
                ZStack {
                    VStack{
                        
//                        Text("\(viewState.height)")

                        Rectangle()
                            .frame(width : 60, height: 8)
                            .foregroundColor(Color.black.opacity(1))
                            .cornerRadius(5)
                            .padding(.vertical, 10)
                            .shadow(radius: 1)
                        
                        
                        HStack {
                            
                            ZStack{
                                
//                                Rectangle()
//                                    .frame(width: 100, height: 100)
//                                    .foregroundColor(Color.yellow.opacity(0.4))
//                                    .blur(radius: 10)
                                
                                Image(image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 64, height: 64)
                            }
                            
                  
                            
                            
                            VStack (alignment: .leading, spacing: 8) {
                                
                                Text(title)
                                    .font(.headline)
                                
                                Text("El tiempo promedio de vencimiento es de 2 semanas")
                                    .font(.footnote)
                                
                            }.padding(.leading, 30)
                            
                            
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.horizontal,50)
                        
                        
                        //Calendarw
                        DatePicker(selection: $dateData, in: Date()..., displayedComponents: .date) {
                            Text("Expire date")
                        }
                        .labelsHidden()
                        
                        
                        Text("Nueva fecha de vencimiento \n \(dateData, formatter: dateFormatter)")
                            .multilineTextAlignment(.center)
                            .font(.callout)
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal,60)
                        
                        
                        //FALTA BOTON DE GUARDAR
                        
                        Spacer()
                        
                    }
                    .edgesIgnoringSafeArea(.all)
                    
                    
                }
                    
                .background(Color (#colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)))
                .cornerRadius(30)
                .shadow(radius: 10)
                .offset(y: 150)
                .offset(y: viewState.height)
                .edgesIgnoringSafeArea(.all)
                .transition(.move(edge: .bottom))
                .animation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0))
                .gesture(
                    DragGesture().onChanged{ value in
                        self.viewState = value.translation
                    }
                    .onEnded{ value in
                        if self.viewState.height > 200{
                            self.showBig = false
                        }
                        self.viewState = .zero
                    }
                )
            }
        }
    }
}

struct CardsFoodToExpire_Previews: PreviewProvider {
    static var previews: some View {
        CardsFoodToExpire(image: "beef", title: "Carne", date: "ENERO 1", showBig: false)
    }
}
