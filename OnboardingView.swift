//
//  OnboardingView.swift
//  kawruh
//
//  Created by Luthfi Asmara on 10/04/23.
//

import SwiftUI

struct OnboardingView: View{
    @State private var currentStep = 0
    @State private var isLastStep = false
    @State private var isNameFilled = false

    var steps = allSteps
    var body: some View{
        if isLastStep{
            QuestionView()
        } else{
            ZStack{
                Image("canvas")
                    .frame(width: 500, height: 700)
                    .padding(30)
                VStack{
                        Spacer()
                    if currentStep == 0 {
                        Image("kromotalk")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 200)
                        
                    }
                        Text("**\(steps[currentStep].title)**")
                            .foregroundColor(.black)
                            .font(.title)
//                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, maxHeight: (currentStep==0) ? 50:400)
                        Button(action: {
                            if currentStep < steps.count - 1 {
                                    currentStep += 1
                            }else{
                                self.isLastStep = true
                            }
                        }, label: {
                            Image(currentStep == steps.count - 1 ? "start" : "next")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 200)
//                            Text(currentStep == steps.count - 1 ? "Start" : "Next")
//                                .font(.headline)
//                                .fontWeight(.semibold)
//                                .foregroundColor(.white)
//                                .padding(.horizontal, 24)
//                                .padding(.vertical, 12)
//                                .background(Color.blue)
//                                .cornerRadius(8)
                        })
                        Spacer()
                    }.padding(.horizontal, 30)
                
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

