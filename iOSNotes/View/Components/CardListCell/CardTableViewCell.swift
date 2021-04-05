//
//  CardTableViewCell.swift
//  iOSNotes
//
//  Created by David Pasache on 5/4/21.
//

import UIKit

class CardTableViewCell: UITableViewCell {
    
    @IBOutlet weak var borderedView: UIView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var desc: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Bordered View
        borderedView.layer.borderWidth = 1
        borderedView.layer.cornerRadius = 4
        borderedView.layer.borderColor = UIColor(named: "Melrose")?.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
