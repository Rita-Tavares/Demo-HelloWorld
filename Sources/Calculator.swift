public struct Calculator {
    public init() {}

    // Adds two numbers (now clamps result at 0..1_000_000)
    public func add(_ a: Int, _ b: Int) -> Int {
        let sum = a + b
        return max(0, min(sum, 1_000_000))
    }

    // NEW: Multiply two numbers (safe clamp)
    public func multiply(_ a: Int, _ b: Int) -> Int {
        let product = a * b
        return max(0, min(product, 1_000_000))
    }
}
