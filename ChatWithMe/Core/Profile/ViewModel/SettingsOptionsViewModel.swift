import Foundation
import SwiftUI

// We used CaseIterable here, so we can call them with .allCases in ForEach loop

enum SettingsOptionsViewModel: Int, CaseIterable, Identifiable {
    case darkMode
    case activeStatus
    case accesibility
    case privacy
    case notifications

    var title: String {
        switch self {
            
        case .darkMode: return "Dark Mode"
        case .activeStatus: return "Active Status"
        case .accesibility: return "Accesibility"
        case .privacy: return "Privacy"
        case .notifications: return "Notifications"
        }
    }
    
    var imageName: String {
        switch self {
            
        case .darkMode: return "moon.circle.fill"
        case .activeStatus: return "message.badge.circle.fill"
        case .accesibility: return "person.circle.fill"
        case .privacy: return "lock.circle.fill"
        case .notifications: return "bell.circle.fill"
        }
    }
    
    var imageBackgroundColor: Color {
        switch self {
            
        case .darkMode: return Color(.black)
        case .activeStatus: return Color(.green)
        case .accesibility: return Color(.black)
        case .privacy: return Color(.blue)
        case .notifications: return Color(.purple)
        }
    }
    
    var id: Int { return self.rawValue }
}
