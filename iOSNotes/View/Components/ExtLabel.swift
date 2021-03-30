
import UIKit

extension UILabel {
    
    func style(_ style: TextStyle) {
        self.font = UIFont(name: style.font.rawValue, size: style.size.rawValue)
        
        let textColor: UIColor?
        switch style.color {
        case .white:
            textColor = UIColor.white
        case .black:
            textColor = UIColor(named: "MineShaft")
        case .gray:
            textColor = UIColor(named: "Boulder")
        case .green:
            textColor = UIColor(named: "EasternBlue")
        case .purple:
            textColor = UIColor(named: "Melrose")
        }
        if let labelColor = textColor {
            self.textColor = labelColor
        }
        

        let textAlignment: NSTextAlignment
        switch style.alignment {
        case .center:
            textAlignment = .center
        case .left:
            textAlignment = .left
        case.right:
            textAlignment = .right
        }
        self.textAlignment = textAlignment
    }
    
}
