import SwiftUI

struct ContentView: View {
    @State private var counter = 0

    var body: some View {
        VStack(spacing: 20) {
            Text("Welcome to HelloWorld App")
                .font(.largeTitle)
                .multilineTextAlignment(.center)

            Text("You've tapped \(counter) times")
                .font(.headline)

            Button(action: {
                counter += 1
            }) {
                Text("Tap me")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
