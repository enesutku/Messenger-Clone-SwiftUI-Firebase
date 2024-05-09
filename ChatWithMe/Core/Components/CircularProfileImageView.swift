// Created by Enes UTKU

import SwiftUI

struct CircularProfileImageView: View {
    
    let user: User
    let size: ProfileImageSize
    
    var body: some View {
        if let imageURL = user.profileImageUrl {
            Image(imageURL)
                .resizable()
                .scaledToFill()
                .frame(width: size.dimension, height: size.dimension)
                .clipShape(Circle())
        } else {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: size.dimension, height: size.dimension)
                .foregroundStyle(Color(.systemGray4))
        }
    }
}

#Preview {
    CircularProfileImageView(user: User.MOCK_USER, size: .medium)
}

enum ProfileImageSize {
    case xxSmall
    case xSmall
    case small
    case medium
    case large
    case xLarge
    
    var dimension: CGFloat {
        switch self {
            
        case .xxSmall: return 28
        case .xSmall: return 32
        case .small: return 48
        case .medium: return 56
        case .large: return 64
        case .xLarge: return 80
        }
    }
}
