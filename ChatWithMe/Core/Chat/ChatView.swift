// Created by Enes UTKU

import SwiftUI

struct ChatView: View {
    
    @State private var messageText = ""
    
    var body: some View {
        VStack {
            ScrollView {
                // Header
                VStack {
                    CircularProfileImageView(user: User.MOCK_USER, size: .xLarge)
                    
                    VStack(spacing: 4) {
                        Text("Lightning McQueen")
                            .font(.title3)
                        .fontWeight(.semibold)
                    
                    Text("Messenger")
                        .font(.footnote)
                        .foregroundStyle(.gray)
                    }
                }
                // Messages
                ForEach(0...15, id: \.self) { message in
                    ChatMessageCell(isFromCurrentUser: Bool.random())
                }
            }
            
            // Message Input
            
            Spacer()
            
            ZStack(alignment: .trailing) {
                TextField("Message...", text: $messageText, axis: .vertical)
                    .padding(12)
                    .padding(.trailing, 48)
                    .background(Color(.systemGroupedBackground))
                    .clipShape(Capsule())
                    .font(.subheadline)
                
                Button(action: {
                    print("Send Message")
                }, label: {
                    Text("Send")
                        .fontWeight(.semibold)
                })
                .padding(.horizontal)
            }
            .padding()
            
        }
    }
}

#Preview {
    ChatView()
}
