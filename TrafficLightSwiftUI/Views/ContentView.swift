import SwiftUI

struct ContentView: View {
    @State private var buttonTitle = "START"
    
    @State private var opacityRed = 0.3
    @State private var opacityYellow = 0.3
    @State private var opacityGreen = 0.3
    
    @State private var currentLight = CurrentLight.red

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    var body: some View {
        VStack {
            TrafficLightFrameView(opacityRed: opacityRed, opacityYellow: opacityYellow, opacityGreen: opacityGreen)
            Spacer()
            buttonInfo
        }
    }
}

//MARK: - CurrentLight
extension ContentView {
    enum CurrentLight {
        case red, yellow, green
    }
}

//MARK: - SetupButton
extension ContentView {
    private var buttonInfo: some View {
        Button(action: {changeAccentColor()}) {
            Text(buttonTitle)
                .foregroundColor(.white)
                .font(.largeTitle.bold())
                .frame(width: 140.0, height: 60.0)
                .background(Color.blue.padding(.horizontal, -16))
                .cornerRadius(15)
        }
    }
}

//MARK: - ChangeColorFunc
extension ContentView {
    private func changeAccentColor() {
        
        let lightIsOn = 1.0
        let lightIsOff = 0.1
        
        switch currentLight {
        case .red:
            opacityGreen = lightIsOff
            opacityRed = lightIsOn
            currentLight = .yellow
        case .yellow:
            opacityRed = lightIsOff
            opacityYellow = lightIsOn
            currentLight = .green
        default:
            opacityYellow = lightIsOff
            opacityGreen = lightIsOn
            currentLight = .red
        }
        
        buttonTitle = "NEXT"
    }
}
