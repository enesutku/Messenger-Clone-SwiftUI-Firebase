// Created by Enes UTKU

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationStack {
            
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
                    TextField("Enter your email", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .clipShape(.rect(cornerRadius: 10))
                        .padding(.horizontal, 24)
                    SecureField("Enter your password", text: $viewModel.password)
                        .textInputAutocapitalization(.never)
                        .font(.subheadline)
                        .padding(12)
                        .background(Color(.systemGray6))
                        .clipShape(.rect(cornerRadius: 10))
                        .padding(.horizontal, 24)
                }
                
                // Forgot Password
                Button(action: {
                    print("Forgot Password Button")
                }, label: {
                    Text("Forgot Password?")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing, 28)
                })
                .frame(maxWidth: .infinity, alignment: .trailing)
                
                // Login
                Button(action: {
                    Task { try await viewModel.login() }
                }, label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .clipShape(.rect(cornerRadius: 10))
                })
                .padding(.vertical)
                // Login With Apple
                HStack {
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                }
                .foregroundStyle(.gray)
                
                HStack {
                    Image("facebooklogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                    Text("Continue with Facebook")
                        .foregroundStyle(.blue)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                .padding(.top, 8)
                
                Spacer()
                
                Divider()
                
                // Sign Up Link
                
                NavigationLink {
                    RegisterView()
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack(spacing: 3, content: {
                        Text("Don't have an account?")
                        Text("Sign Up")
                            .bold()
                    })
                    .font(.footnote)
                    .fontWeight(.semibold)
                }
                .padding(.vertical)
            }
        }
    }
}

#Preview {
    LoginView()
}
