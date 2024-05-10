import SwiftUI

class LoginViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    
    func login() async throws {
        try await AuthService().login(withEmail: email, password: password)
    }
    
}
