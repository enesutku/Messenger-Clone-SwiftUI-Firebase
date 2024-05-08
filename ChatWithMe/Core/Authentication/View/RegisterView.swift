// Created by Enes UTKU

import SwiftUI

struct RegisterView: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            // Logo
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
                .padding()
            
            // Fields
            VStack {
                TextField("Enter your email", text: $email)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .clipShape(.rect(cornerRadius: 10))
                    .padding(.horizontal, 24)
                TextField("Enter your fullname", text: $fullname)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .clipShape(.rect(cornerRadius: 10))
                    .padding(.horizontal, 24)
                SecureField("Enter your password", text: $password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .clipShape(.rect(cornerRadius: 10))
                    .padding(.horizontal, 24)
            }
            
            Button(action: {
                print("Register")
            }, label: {
                Text("Register")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundStyle(.white)
                    .frame(width: 360, height: 44)
                    .background(Color(.systemBlue))
                    .clipShape(.rect(cornerRadius: 10))
            })
            .padding(.vertical)
            
            Spacer()
            
            Divider()
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 3, content: {
                    Text("Already have an account?")
                    Text("Sign In")
                        .bold()
                })
                .font(.footnote)
                .fontWeight(.semibold)
            }
            .padding(.vertical)
        }
    }
}

#Preview {
    RegisterView()
}
