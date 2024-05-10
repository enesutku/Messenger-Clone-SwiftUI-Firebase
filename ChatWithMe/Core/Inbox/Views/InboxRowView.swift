// Created by Enes UTKU

import SwiftUI

struct InboxRowView: View {
    var body: some View {
        HStack(alignment: .top, spacing: 12, content: {
            CircularProfileImageView(user: User.MOCK_USER, size: .large)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("Mater (Friend)")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                
                Text("Some test message for now that spans more than one line!")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
                    .lineLimit(2)
                    .frame(maxWidth: UIScreen.main.bounds.width - 100, alignment: .leading)
            }
            
            HStack {
                Text("Yesterday")
                Image(systemName: "chevron.right")
            }
            .font(.footnote)
            .foregroundStyle(.gray)
        })
        .frame(height: 72)
    }
}

#Preview {
    InboxRowView()
}
