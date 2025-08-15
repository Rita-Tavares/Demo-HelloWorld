import SwiftUI

struct ContentView: View {
    @State private var counter = 0
    @State private var isOn = false

    var body: some View {
        VStack(spacing: 16) {
            Text("Welcome to HelloWorld App!")
                .font(.largeTitle)
                .multilineTextAlignment(.center)

            // Counter section
            HStack(spacing: 12) {
                Button("-") { counter = max(0, counter - 1) }
                    .buttonStyle(.bordered)
                Text("\(counter)")
                    .font(.title2)
                    .monospacedDigit()
                    .frame(minWidth: 44)
                Button("+") { counter += 1 }
                    .buttonStyle(.borderedProminent)
            }

            // Toggle section
            Toggle(isOn: $isOn) {
                Text("Enable Pro Mode")
            }
            .padding(.horizontal)

            if isOn {
                ProModeCard(counter: counter)
                    .transition(.opacity)
            }
        }
        .padding()
        .animation(.default, value: isOn)
    }
}

struct ProModeCard: View {
    let counter: Int

    var body: some View {
        VStack(spacing: 8) {
            Text("Pro Mode")
                .font(.headline)
            Text("Current counter: \(counter)")
                .font(.subheadline)
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .shadow(radius: 1)
        .padding(.horizontal)
    }
}

#Preview {
    ContentView()
}
