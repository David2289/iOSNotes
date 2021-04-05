
import UIKit

extension UILabel {
    
    func style(font: Font, size: Size, color: Color) {
        let fontName = getFontName(font: font)
        let sizeFloat = getSize(size: size)
        let colorName = getColorName(color: color)
        self.font = UIFont(name: fontName, size: sizeFloat)
        self.textColor = UIColor(named: colorName)
    }
    
    enum Font {
        case thin
        case light
        case regular
        case medium
        case bold
        case italic
    }
    
    enum Size {
        case small
        case caption
        case body
        case subtitle
        case title
        case headline
        case display
    }
    
    enum Color {
        case white
        case black
        case gray
        case green
        case purple
    }
    
    private func getFontName(font: Font) -> String {
        switch font {
        case .thin:
            return "Sailec-Thin"
        case .light:
            return "Sailec-Light"
        case .regular:
            return "Sailec-Regular"
        case .medium:
            return "Sailec-Medium"
        case .bold:
            return "Sailec-Bold"
        case .italic:
            return "Sailec-RegularItalic"
        }
    }
    
    private func getSize(size: Size) -> CGFloat {
        switch size {
        case .small:
            return 10
        case .caption:
            return 12
        case .body:
            return 15
        case .subtitle:
            return 16
        case .title:
            return 18
        case .headline:
            return 22
        case .display:
            return 30
        }
    }
    
    private func getColorName(color: Color) -> String {
        switch color {
        case .white:
            return "White"
        case .black:
            return "Black"
        case .gray:
            return "Boulder"
        case .green:
            return "EasternBlue"
        case .purple:
            return "Melrose"
        }
    }
    
}
