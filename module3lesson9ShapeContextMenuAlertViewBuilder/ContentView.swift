import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: -60) {  // 👈 отрицательный отступ
            
            CloudShapeOptimized()
                .foregroundStyle(.mint)
                .frame(height: 260)
                .shadow(color: .black.opacity(0.15), radius: 10, y: 5)
            
            CloudShapeUpsideDown()
                .foregroundStyle(.black)
                .frame(height: 260)
                .shadow(color: .black.opacity(0.15), radius: 10, y: 5)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
