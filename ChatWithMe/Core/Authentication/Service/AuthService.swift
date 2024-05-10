import Foundation
import Firebase

class AuthService {
    
    func login(withEmail email: String, password: String) async throws {
        print("DEBUG: Email is \(email)")
        print("DEBUG: Password is \(password)")
    }

    func createUser(withEmail email: String, password: String, fullname: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            print("DEBUG: Create user \(result.user.uid)")
        } catch {
            print("DEBUG: Failed to create user \(error.localizedDescription)")
        }
    }
}
