
import UIKit

class TextStyle: NSObject {
    
    static func font(name: String) -> String {
        switch name {
        case "Thin":
            return "Sailec-Thin"
        case "Light":
            return "Sailec-Light"
        case "Regular":
            return "Sailec-Regular"
        case "Medium":
            return "Sailec-Medium"
        case "Bold":
            return "Sailec-Bold"
        case "Italic":
            return "Sailec-RegularItalic"
        default:
            return "Sailec-Regular"
        }
    }
    
    static func size(name: String) -> CGFloat {
        switch name {
        case "Small":
            return 10
        case "Caption":
            return 12
        case "Body":
            return 15
        case "Subtitle":
            return 16
        case "Title":
            return 18
        case "Headline":
            return 22
        case "Display":
            return 30
        default:
            return 15
        }
    }
    
    static func color(name: String) -> String {
        switch name {
        case "White":
            return "White"
        case "Gray":
            return "Boulder"
        case "Black":
            return "MineShaft"
        case "Green":
            return "EasternBlue"
        case "Purple":
            return "Melrose"
        default:
            return "MineShaft"
        }
    }
    
}
