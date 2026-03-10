import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(spacing: -70) {
            OneElementView()
            TwoElementView()
            ThreeElementView()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
