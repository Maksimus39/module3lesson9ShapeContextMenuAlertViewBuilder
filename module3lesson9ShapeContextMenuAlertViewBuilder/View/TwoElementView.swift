import SwiftUI

struct TwoElementView: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 80, height: 80)
                .overlay {
                    Circle()
                        .stroke(.gray, lineWidth: 2)
                        .frame(width: 100, height: 100)
                }
        }
    }
}
