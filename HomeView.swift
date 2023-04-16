import SwiftUI

struct SplashView: View {
    @State var isSplash: Bool = false
    var body: some View {
        if isSplash{
            OnboardingView()
        }else{
            VStack{
                ZStack{
                    Image("canvas")
                    Image("kromotalk")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300)
                }
            }.onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now()+3.0){
                    self.isSplash = true
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
