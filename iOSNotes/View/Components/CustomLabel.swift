
import UIKit

@IBDesignable class CustomLabel: UILabel {
    
    let paragraphStyle = NSMutableParagraphStyle()
    
    @IBInspectable var textKey: String = "HomeTitle" {
        didSet { updateLabel() }
    }
    
    @IBInspectable var fontName: String = "Regular" {
        didSet { updateLabel() }
    }
    
    @IBInspectable var sizeName: String = "Body" {
        didSet { updateLabel() }
    }
    
    @IBInspectable var colorName: String = "MineShaft" {
        didSet { updateLabel() }
    }
    
    private func updateLabel() {
        let text = NSLocalizedString(textKey, comment: "")
        let font = TextStyle.font(name: fontName)
        let size = TextStyle.size(name: sizeName)
        let color = TextStyle.color(name: colorName)
        
        paragraphStyle.lineSpacing = 8
        let attrString = NSMutableAttributedString(string: text)
        attrString.addAttribute(
            NSAttributedString.Key.paragraphStyle,
            value: paragraphStyle,
            range: NSMakeRange(0, attrString.length))
        self.text = text
        self.attributedText = attrString
        self.font = UIFont(name: font, size: size)
        self.textColor = UIColor(named: color)
    }
    
}
