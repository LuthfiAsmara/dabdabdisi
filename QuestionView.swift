//
//  MainView.swift
//  kawruh
//
//  Created by Luthfi Asmara on 07/04/23.
//

import SwiftUI

struct QuestionView: View{
    @State var isHappy: Bool = false
    @State var isSad: Bool = false
    @State var isEnd: Bool = false
    @State var isIntro: Bool = true
    @State var qa = allQuestion
    @State var currentIndex = 0
    @State var isZoom: Bool = false
    @State var isAnswer: Bool = false
    @State var isIndexTwo: Bool = false
    @State var isApologize: Bool = false
    @State var scale: CGFloat = 1.0
    @State var pointX: CGFloat = 0
    @State var pointY: CGFloat = 0
    
    
    var body: some View{
        
        ZStack{
            if isApologize{
                ApologizingView(
                    qa: $qa,
                    currentIndex: $currentIndex,
                    isHappy: $isHappy,
                    isSad: $isSad,
                    isEnd: $isEnd,
                    isZoom: $isZoom,
                    isAnswer: $isAnswer,
                    isIndexTwo: $isIndexTwo,
                    isApologize: $isApologize,
                    scale: $scale,
                    pointX: $pointX,
                    pointY: $pointY
                )
            }else{
                if isEnd{
                    EndView()
                } else{
                    if isIntro{
                        IntroView(
                            qa: $qa,
                            currentIndex: $currentIndex,
                            isHappy: $isHappy,
                            isSad: $isSad,
                            isEnd: $isEnd,
                            isIntro: $isIntro,
                            isZoom: $isZoom,
                            isAnswer: $isAnswer,
                            scale: $scale,
                            pointX: $pointX,
                            pointY: $pointY
                        )
                    }else{
                        IndexView(
                            
                            qa: $qa,
                            currentIndex: $currentIndex,
                            isHappy: $isHappy,
                            isSad: $isSad,
                            isEnd: $isEnd,
                            isZoom: $isZoom,
                            isAnswer: $isAnswer,
                            isIndexTwo: $isIndexTwo,
                            isApologize: $isApologize,
                            scale: $scale,
                            pointX: $pointX,
                            pointY: $pointY
                        )
                        
                    }
                    
                    
                }
            }
        }
    }
}



struct IntroView: View{
    @Binding var qa: [QA]
    @Binding var currentIndex: Int
    @Binding var isHappy: Bool
    @Binding var isSad: Bool
    @Binding var isEnd: Bool
    @Binding var isIntro: Bool
    @Binding var isZoom: Bool
    @Binding var isAnswer: Bool
    @Binding var scale: CGFloat
    @Binding var pointX: CGFloat
    @Binding var pointY: CGFloat
    @State private var offsetY: CGFloat = 240
    
    var body: some View{
        
        VStack{
            ZStack{
                
                Image(qa[currentIndex].image)
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight:700)
                    .border(.black, width: 4)
                    .scaleEffect(x: -1, y: 1)
                
                HStack{
                    ZStack{
                        Image("tree")
                            .resizable()
                            .scaledToFit()
                            .frame(maxHeight: 500)
                            .offset(y: -50)
                        Image("kite")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 110)
                            .offset(y: -90)
                            .offset(x: -40)
                            .scaleEffect(x: -1, y: 1)
                        
                    }
                    Image("child1")
                        .resizable()
                        .frame(width: 200 ,height: 270)
                        .offset(y: 100)
                        .scaleEffect(x: -1, y: 1)
                    
                    
                    Spacer()
                    
                }
                Button{
                    self.isIntro = false
                    //                self.currentIndex = 0
                }label: {
                    Image("begin")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                }
                .offset(y: offsetY)
                .animation(Animation.easeInOut(duration: 0.6).repeatForever(autoreverses: true))
                .onAppear {
                    offsetY = 250
                }
                
            }.frame(maxWidth: .infinity, maxHeight:700)
            
            Text("One morning, you were flying a kite in the park. Unfortunately, your kite got stuck in a tree. You looked sad, but luckily you met your neighbor, Pak Bagyo, and you wanted to ask for their help.\n**Let's learn kromo language from this case**")
                .font(.system(size: 30))
                .padding(30)
            
            
            Spacer()
        }.background(Image("canvas"))
    }
}

struct IndexView: View{
    @Binding var qa: [QA]
    @Binding var currentIndex: Int
    @Binding var isHappy: Bool
    @Binding var isSad: Bool
    @Binding var isEnd: Bool
    @Binding var isZoom: Bool
    @Binding var isAnswer: Bool
    @Binding var isIndexTwo: Bool
    @Binding var isApologize: Bool
    @Binding var scale: CGFloat
    @Binding var pointX: CGFloat
    @Binding var pointY: CGFloat
    
    
    var body: some View{
        
        ZStack{
            VStack{
                ZStack{
                    Image(qa[currentIndex].image)
                        .resizable()
                        .frame(maxWidth: .infinity, maxHeight:700)
                    
                    HStack{
                        Spacer()
                        switch currentIndex{
                        case 0:
                            Image("child3")
                                .resizable()
                                .frame(width: 200, height: 350)
                                .padding(.top, 150)
                        case 1:
                            Image("child4")
                                .resizable()
                                .frame(width: 200, height: 350)
                                .padding(.top, 150)
                            
                        case 2:
                            Image("child3")
                                .resizable()
                                .frame(width: 200, height: 350)
                                .padding(.top, 150)
                        default:
                            Image("child3")
                                .resizable()
                                .frame(width: 200, height: 350)
                                .padding(.top, 150)
                        }
                        
                        Spacer().frame(width: 350)
                        switch currentIndex{
                        case 0:
                            Image((isSad) ? "neighbor-shocked" : "neighbor")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200)
                        case 1:
                            Image((isSad) ? "neighbor-shocked" :"neighbor-speak")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200)
                            
                        case 2:
                            Image((isSad) ? "neighbor-shocked" :"neighbor-kite")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200)
                        default:
                            Image("child1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200)
                        }
                        
                        Spacer()
                    }
                    VStack{
                        Spacer()
                        Text(qa[currentIndex].question)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 15)
                            .background(.black.opacity(0.2))
                    }
                    Image("buble")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                        .offset(x: -170)
                        .offset(y: -120)
                    Text("...?")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .offset(x: -170)
                        .offset(y: -120)
                    
                    if isZoom{
                        ZStack{
                            Image("buble")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 170)
                                .offset(x: -157)
                                .offset(y: -185)
                                .scaleEffect(x: -1, y: 1)
                            Text((isAnswer) ? qa[currentIndex].gbAnswer : qa[currentIndex].bbAnswer)
                                .font(
                                    .custom(
                                        "Arial",
                                        fixedSize: 10)
                                    .weight(.bold)).foregroundColor(Color .black)
                                .multilineTextAlignment(.center)
                                .offset(x: 157)
                                .offset(y: -185)
                            
                        }
                    }
                    
                    if isIndexTwo{
                        ZStack{
                            Image("buble")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 250)
                                .offset(x: -110)
                                .offset(y: -185)
                                .scaleEffect(x: -1, y: 1)
                            Text("Here's\nyour kite")
                                .font(.headline)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .multilineTextAlignment(.center)
                                .offset(x: 110)
                                .offset(y: -185)
                            
                        }
                    }
                    
                }
                //                -----------------------------------------------------
                HStack{
                    ForEach(qa[currentIndex].answer) { a in
                        
                        ZStack{
                            Image("card")
                                .resizable()
                                .scaledToFit()
                                .border(.black)
                            VStack(alignment:.leading){
                                Spacer().frame(height: 100)
                                Text(a.title)
                                    .font(.largeTitle)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                    .padding(.horizontal, 30)
                                
                                Text("*\(a.translate)*")
                                    .font(.system(size: 32))
                                    .padding(.horizontal, 30)
                                Spacer()
                            }
                        }.onTapGesture {
                            withAnimation{
                                self.isIndexTwo = false
                                if a.status{
                                    self.isAnswer = true
                                }else{
                                    self.isSad = true
                                }
                                
                                isZoom = true
                                scale = 4.0
                                pointX = 0.83
                                pointY = 0.02
                                
                                Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { _ in
                                    self.isZoom = false
                                    self.isSad = false
                                    pointX = 0
                                    pointY = 0
                                    scale = 1.0
                                    
                                    if a.status && currentIndex < $qa.count - 1{
                                        self.isAnswer = false
                                        currentIndex+=1
                                        if currentIndex == 2 {
                                            self.isIndexTwo = true
                                        }else{
                                            self.isIndexTwo = false
                                        }
                                        
                                    }else if !a.status || !(currentIndex < $qa.count - 1){
                                                                                self.isAnswer = false
                                        isApologize = true
                                                                                currentIndex = currentIndex
                                        
                                    }else if !(currentIndex < $qa.count - 1){
                                        self.isEnd = true
                                    }
                                }
                            }
                        }
                    }
                }.padding(.horizontal, 10)
                
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Image("canvas"))
            .navigationBarBackButtonHidden(true)
            .scaleEffect(scale, anchor: UnitPoint(x: pointX, y: pointY))
        
    }
    
    
}

struct ApologizingView: View {
    @Binding var qa: [QA]
    @Binding var currentIndex: Int
    @Binding var isHappy: Bool
    @Binding var isSad: Bool
    @Binding var isEnd: Bool
    @Binding var isZoom: Bool
    @Binding var isAnswer: Bool
    @Binding var isIndexTwo: Bool
    @Binding var isApologize: Bool
    @Binding var scale: CGFloat
    @Binding var pointX: CGFloat
    @Binding var pointY: CGFloat
    
    var body: some View {
        ZStack{
            VStack{
                ZStack{
                    Image(qa[currentIndex].image)
                        .resizable()
                        .frame(maxWidth: .infinity, maxHeight:600)
                    
                    HStack{
                        Spacer()
                        switch currentIndex{
                        case 0:
                            Image("child3")
                                .resizable()
                                .frame(width: 200, height: 350)
                                .padding(.top, 150)
                        case 1:
                            Image("child4")
                                .resizable()
                                .frame(width: 200, height: 350)
                                .padding(.top, 150)
                            
                        case 2:
                            Image("child3")
                                .resizable()
                                .frame(width: 200, height: 350)
                                .padding(.top, 150)
                        default:
                            Image("child3")
                                .resizable()
                                .frame(width: 200, height: 350)
                                .padding(.top, 150)
                        }
                        
                        Spacer().frame(width: 350)
                        Image("neighbor-shocked")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200)
                        Spacer()
                    }
                    VStack{
                        Spacer()
                        Text("It looks like Mr. Bagyo isn't happy with the way you spoke. You used the ngoko language just now, so you should switch to kromo. Please apologize and repeat your way of talking using the kromo language.")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 15)
                            .background(.black.opacity(0.2))
                    }
                    Image("buble")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200)
                        .offset(x: -170)
                        .offset(y: -120)
                    Text("...?")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                        .offset(x: -170)
                        .offset(y: -120)
                    
                }.frame(maxWidth: .infinity, maxHeight: 600)
                ZStack{
                    Image("card")
                        .resizable()
                        .scaledToFit()
                    VStack{
                        Text("*Click this card to apologize*")
                            .font(.system(size: 20))
                            .frame(width: 340)
                            .padding(.bottom, 30)

                        Text("**Pangapunten Pak Bagyo**, wau kulo ngagem basa ngoko")
                            .font(.system(size: 32))
                            .frame(width: 340)
                    }
                }.onTapGesture {
                    self.isApologize = false
                }
                Spacer()
            }.frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Image("canvas"))
                .navigationBarBackButtonHidden(true)
                .scaleEffect(scale, anchor: UnitPoint(x: pointX, y: pointY))
        }
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}



