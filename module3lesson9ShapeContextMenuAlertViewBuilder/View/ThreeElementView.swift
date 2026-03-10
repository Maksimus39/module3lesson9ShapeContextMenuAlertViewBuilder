import SwiftUI


struct ThreeElementView: View {
    var body: some View {
        ZStack {
            CloudShapeUpsideDown()
                .fill(.black)
                .frame(height: 260)
            
            ZStack {
                Rectangle()
                    .fill(.black.opacity(0.7))
                    .frame(width: 120, height: 30)
                    .cornerRadius(30)
                    .offset(x: 0, y: 65)
            
                HStack {
                    Text("Overview")
                        .font(.system(size: 14))
                    Image(systemName: "chevron.down")
                }
                .foregroundColor(.white)
                .offset(x: 0, y: 65)
            }
           
            
            VStack {
                Text("You Get")
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                    .offset(x: -170, y: -30)
                
                HStack(alignment: .center, spacing: 100) {
                    HStack(spacing: 9) {
                        Circle()
                            .frame(width: 40, height: 40)
                            .foregroundStyle(.gray.opacity(0.3))
                        
                        Text("BNB")
                            .foregroundColor(.white)
                            .font(.system(size: 14))
                        Image(systemName: "chevron.down")
                            .foregroundColor(.white)
                    }
                    .offset(x: -60, y: 0)
                    
                    HStack {
                        Text("1.37")
                            .font(.system(size: 18))
                        
                        Text("BNB")
                            .font(.system(size: 10))
                    }
                    .foregroundColor(.white)
                }
                
                Text("Balance 24.56")
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                    .offset(x: -150, y: 30)
            }
        }
    }
}
