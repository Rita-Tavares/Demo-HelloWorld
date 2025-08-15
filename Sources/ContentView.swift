// Demo: Pro Mode toggle and counter
@State private var counter = 0
@State private var proMode = false

VStack(spacing: 16) {
    Text("🚀 HelloWorld — Pro Mode demo")
        .font(.largeTitle)
        .multilineTextAlignment(.center)

    Toggle("Enable Pro Mode", isOn: $proMode)
        .padding()

    HStack(spacing: 12) {
        Button("-") { counter = max(0, counter - 1) }.buttonStyle(.bordered)
        Text("\(counter)").font(.title2).monospacedDigit().frame(minWidth: 44)
        Button("+") { counter += 1 }.buttonStyle(.borderedProminent)
    }
}
.padding()
