//
//  EndView.swift
//  kawruh
//
//  Created by Luthfi Asmara on 10/04/23.
//

import SwiftUI

struct EndView: View{
    @State var isStart: Bool = false
    @State private var offset: CGFloat = 0
    
    
    var body: some View{
        
        if isStart{
            QuestionView()
        } else{
            VStack{
                Text("We're Done!")
                    .font(.system(size: 35))
                    .fontWeight(.bold)
                Spacer().frame(height: 30)
                
                Text("What have you learned in kromo language?")
                    .font(.system(size: 30))
                    .fontWeight(.bold)
                    .padding(.bottom, 5)
                VStack{
                    ZStack{
                        Image("badges")
                            .resizable()
                            .frame(width: 400, height: 140)
                        Text("Greetings")
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .padding(.bottom, 30)
                    }.offset(y: offset)
                        .animation(Animation.easeInOut(duration: 0.6).repeatForever(autoreverses: true))
                        .onAppear {
                            offset = 10
                        }
                    
                    Text("**Sugeng Enjing**, Pak Bagyo")
                        .font(.system(size: 25))
                        .frame(width: 550)
                    
                    
                }.frame(width: 600)
                    .padding(.bottom, 20)
                VStack{
                    ZStack{
                        Image("badges")
                            .resizable()
                            .frame(width: 400, height: 140)
                        
                        Text("Asking for help")
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .padding(.bottom, 30)
                        
                    }.offset(y: offset)
                        .animation(Animation.easeInOut(duration: 0.6).repeatForever(autoreverses: true))
                        .onAppear {
                            offset = 10
                        }
                    Text("Layangan kulo nyangkut wonten wit. Kulo **badhe nyuwun tulung** kangge mendetne layangan")                            .font(.system(size: 25))
                        .frame(width: 550)
                    
                }.frame(width: 600)
                    .padding(.bottom, 20)
                    .cornerRadius(20)
                VStack{
                    ZStack{
                        Image("badges")
                            .resizable()
                            .frame(width: 400, height: 140)
                        Text("Apologizing")
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .padding(.bottom, 30)
                        
                    }.offset(y: offset)
                        .animation(Animation.easeInOut(duration: 0.6).repeatForever(autoreverses: true))
                        .onAppear {
                            offset = 10
                        }
                    Text("**Matur sembah nuwun**. Sampun mendetne layangan kulo")
                        .font(.system(size: 25))
                        .frame(width: 550)
                }.frame(width: 600)
                    .padding(.bottom, 20)
                VStack{
                    ZStack{
                        Image("badges")
                            .resizable()
                        
                            .frame(width: 400, height: 140)
                        Text("Gratitude")
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            .padding(.bottom, 30)
                        
                    }.offset(y: offset)
                        .animation(Animation.easeInOut(duration: 0.6).repeatForever(autoreverses: true))
                        .onAppear {
                            offset = 10
                        }
                    
                    Text("**Matur sembah nuwun**. Sampun mendetne layangan kulo")
                        .font(.system(size: 25))
                        .frame(width: 550)
                }.frame(width: 600)
                    .padding(.bottom, 20)
                    .border(.black)
                
                
                Spacer().frame(height: 30)
                //                Text("You're awesome!")
                //                    .font(.system(size: 35))
                //                    .fontWeight(.bold)
                
            }
            .onTapGesture {
                self.isStart = true
            }
        }
    }
}

struct EndView_Previews: PreviewProvider {
    static var previews: some View {
        EndView()
    }
}
