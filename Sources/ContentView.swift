import SwiftUI

struct ContentView: View {
    @State private var isProModeEnabled = false
    @State private var welcomeMessage = "Welcome to the Demo App"

    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text(welcomeMessage)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                    .padding()

                Toggle(isOn: $isProModeEnabled) {
                    Text(isProModeEnabled ? "Pro Mode: ON" : "Pro Mode: OFF")
                        .font(.headline)
                }
                .padding()

                Button(action: {
                    welcomeMessage = "Thanks for trying the updated version! 🎉"
                }) {
                    Text("Tap to Change Message")
                        .font(.system(size: 18, weight: .medium))
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }

                Spacer()
            }
            .padding()
            .navigationTitle("Demo App")
        }
    }
}

#Preview {
    ContentView()
}
